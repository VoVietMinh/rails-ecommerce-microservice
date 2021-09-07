# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Services seed 
Service.create([{id: '29d802d0-0e3e-11ec-82a8-0242ac130003', name: 'catalog_service', url: 'http://localhost:8000/', token: '' }])
Service.create([{id: '29d802d0-0e3e-11ec-82a8-0242ac130013', name: 'basket_service', url: 'http://localhost:8001/', token: '' }])
Service.create([{id: '29d802d0-0e3e-11ec-82a8-0242ac130023', name: 'order_service', url: 'http://localhost:8004/', token: '' }])
# Routes seed
Route.create([{id: '29d802d0-0e3e-11ec-82a8-0242ac130004', service_id: '29d802d0-0e3e-11ec-82a8-0242ac130003', verb: 'get', url_pattern: 'products', version: 'v1'}])
Route.create([{id: '29d802d0-0e3e-11ec-82a8-0242ac130014', service_id: '29d802d0-0e3e-11ec-82a8-0242ac130013', verb: 'get', url_pattern: 'baskets/:user_name', version: 'v1'}])
Route.create([{id: '29d802d0-0e3e-11ec-82a8-0242ac130024', service_id: '29d802d0-0e3e-11ec-82a8-0242ac130013', verb: 'post', url_pattern: 'baskets', version: 'v1'}])
Route.create([{id: '29d802d0-0e3e-11ec-82a8-0242ac130034', service_id: '29d802d0-0e3e-11ec-82a8-0242ac130013', verb: 'delete', url_pattern: 'baskets/:user_name', version: 'v1'}])
Route.create([{id: '29d802d0-0e3e-11ec-82a8-0242ac130044', service_id: '29d802d0-0e3e-11ec-82a8-0242ac130013', verb: 'post', url_pattern: 'checkout', version: 'v1'}])
Route.create([{id: '29d802d0-0e3e-11ec-82a8-0242ac130054', service_id: '29d802d0-0e3e-11ec-82a8-0242ac130023', verb: 'get', url_pattern: 'orders/:user_name', version: 'v1'}])