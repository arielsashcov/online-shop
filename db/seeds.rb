# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# todo: add price to product
# todo: remove description from category

warehouse1 = Warehouse.create!(name: "Barrows Group", description: "Montreal Tools Warehouse")
warehouse2 = Warehouse.create!(name: "Grimes Inc", description: "Toronto Machinery Warehouse")
warehouse3 = Warehouse.create!(name: "Vito Barber Supplies", description: "Montreal Barber Warehouse")

product_category1 = ProductCategory.create!(name: "Scissors", description: "Hair cutting scissors")

product_category2 = ProductCategory.create!(name: "Clippers & Trimmers", description: "Hair cutting clippers and trimmers")

product_category3 = ProductCategory.create!(name: "Barber Jackets", description: "Jackets for barbers")
product_category4 = ProductCategory.create!(name: "Clipper Oil", description: "Clipper oil")
product_category5 = ProductCategory.create!(name: "Sanitation", description: "Tools sanitation")
product_category6 = ProductCategory.create!(name: "Neck Dusters", description: "Neck dusters")

product1 = Product.create!(name: "Phantom II", description: "Arc Scissors", product_category: product_category1, warehouse: warehouse1) # price: 875, brand:
product2 = Product.create!(name: "Kime HH6 Shears", description: "Hattori Hanzo", product_category: product_category1, warehouse: warehouse1) # $1055
product3 = Product.create!(name: "Black-Smith Retro Scissors", description: "Mizutani", product_category: product_category1, warehouse: warehouse1) # $1050

product4 = Product.create!(name: "Andis 79005 Supra ZR II", description: "Cordless 5-Speed Clipper With Lithium Ion Battery", product_category: product_category2, warehouse: warehouse2) # $375
product5 = Product.create!(name: "Oster 76076-010 Classic 76", description: "Professional Hair Clipper", product_category: product_category2, warehouse: warehouse2) # $186
product6 = Product.create!(name: "Andis Pro Slimline", description: "Mizutani", product_category: product_category2, warehouse: warehouse2) # $1050

product7 = Product.create!(name: "Betty Dain", description: "Two zippered pockets", product_category: product_category3, warehouse: warehouse3) # $29.95
product8 = Product.create!(name: "Betty Dain Gold & Black Limited Edition Vintage Apron", description: "Lightweight polyester", product_category: product_category3, warehouse: warehouse3) # $29.95
product9 = Product.create!(name: "Black Ice Barber Jacket Black Size 2X", description: "Light Weight Material", product_category: product_category3, warehouse: warehouse3) # $19.95

product10 = Product.create!(name: "Andis Clipper Oil - 4oz", description: "Use to lubricate and clean blades", product_category: product_category4, warehouse: warehouse3) # $6.95
product11 = Product.create!(name: "Oster Clipper Oil - 4oz", description: "Use to lubricate and clean blades", product_category: product_category4, warehouse: warehouse3) # $7.95

product12 = Product.create!(name: "Andis Blade Care Plus for Clipper Blade 16 oz", description: "The Andis Blade Care Plus washes away hair, buildup and preservatives that accumulate on clipper blades", product_category: product_category5, warehouse: warehouse3) # $17.95
product13 = Product.create!(name: "Andis Cool Care Plus for Clipper Blades 5 in One 15.5 oz", description: "Five-in-one coolant, disinfectant, lubricant, cleaner, and rust preventative with a country-fresh scent", product_category: product_category5, warehouse: warehouse3) # $15.95

product14 = Product.create!(name: "Black Ice Barber Powder Neck Duster", description: "Dispense powder with a push of a button", product_category: product_category6, warehouse: warehouse3) # 12.95
product15 = Product.create!(name: "Black Ice Wood Handle Neck Duster", description: "Soft Neck Duster", product_category: product_category6, warehouse: warehouse3) # $22.95
product16 = Product.create!(name: "Black Ice High Quality Barber Neck Duster", description: "Wood Handle", product_category: product_category6, warehouse: warehouse3) # $17.95