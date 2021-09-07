# frozen_string_literal: true
class RequestPipeline
  attr_reader :params, :api_params

  def initialize(params, api_params)
    @params = params
    @api_params = api_params
  end

  def execute
    values = route_map

    return {} if values.empty?

    Services::Requester.make_request( values[:verb],
                                      values[:url],
                                      { 'X-API-TOKEN': values[:token] },
                                      api_params )
  end

  private

  def route_map
    verb = params[:method].to_s.downcase

    path = params[:url_pattern].gsub('/api/', '').gsub('(.:format)', '')
    splited_path = path.split('/')
    version = splited_path.shift
    url_pattern = splited_path.join('/')

    route = Route.where({ verb: verb,
                          version: version,
                          url_pattern: url_pattern }).last

    return {} unless route

    # remove params in body with exist in url
    api_params.each do |key, value|
      if params[:url_pattern].include?(":#{key}(.:format)")
        api_params.delete(key)
      end
    end
    
    # check api_params if key exist in url_pattern => remove
    pathConfig = params[:path].gsub('/api/v1/', '')
    service = route.service
    {
      verb: verb,
      url: "#{service.url}#{pathConfig}",
      token: service.token
    }
  end
end
