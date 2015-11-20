# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

products = Product.create( [
  {
    name: "Bird and Branches Baker/Server",
    slug: "bird-and-branches-baker-server",
    master_price: 117.99,
    cost_currency: "USD",
    available_on: "2015/08/03",
    shipping_categories: "Default"
  }
  ])
