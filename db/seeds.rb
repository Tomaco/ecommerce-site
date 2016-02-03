# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(:name => "Containers", :description => "Ceramic, plastic & themed containers for your crop.", :image_url => "pots.jpg", :size => "Large", :price => "100" )

Product.create(:name => "Soil Mix", :description => "The perfect combination of grow mediums including all the necessary micro-nutrients for your plants.", :image_url => "soilmix.jpg", :size => "Large", :price => "50" )

Product.create(:name => "Pruner", :description => "Cut, trim & crop with this lovely tool.", :image_url => "pruner.jpg", :size => "Small", :price => "8" )

Product.create(:name => "Vermicompost", :description => "The rounded wormy fellas from west coast got this produce ready to feed your plants.", :image_url => "vermicompost.jpg", :size => "Medium", :price => "25" )
