class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes, id: :uuid do |t|
      t.uuid :service_id
      t.string :verb
      t.string :url_pattern
      t.string :version

      t.timestamps
    end
  end
end
