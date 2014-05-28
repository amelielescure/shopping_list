#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create([
  {
    :name => "Marie pizza campagnarde",
    :price => 6.50,
    :picture => "/products/marie-pizza-campagnarde.jpg"  
  },
  {
    :name => "Daregal persil",
    :price => 1.29,
    :picture => "/products/daregal-persil.jpg"  
  },
  {
    :name => "Bonduelle epinards feuilles",
    :price => 1.34,
    :picture => "/products/bonduelle-epinard.jpg"  
  },
  {
    :name => "McCain pommes duchesses",
    :price => 2.29,
    :picture => "/products/mccain-pommes-duchesses.jpg"  
  },
  {
    :name => "Pennes au poulet",
    :price => 4.07,
    :picture => "/products/pennes-poulet.jpg"  
  },
  {
    :name => "Poulet au curry",
    :price => 1.94,
    :picture => "/products/poulet-curry.jpg"  
  },
  {
    :name => "Spaghetti Bolognaise",
    :price => 1.88,
    :picture => "/products/spagh-bolo.jpg"  
  },
  {
    :name => "Bounty inclusion barres",
    :price => 2.65,
    :picture => "/products/bounty.jpg"  
  },
  {
    :name => "Oreo Ice Cream",
    :price => 2.06,
    :picture => "/products/oreo.jpg"  
  },
  {
    :name => "Melange de fruits rouges",
    :price => 2.67,
    :picture => "/products/fruits-rouges.jpg"  
  },
  {
    :name => "Charal prêt à cuisiner pur boeuf",
    :price => 7.99,
    :picture => "/products/charal.jpg"  
  }
])

