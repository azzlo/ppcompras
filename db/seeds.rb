# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Add default Admin user
User.create!({:name => "administrator", :email => "admin@admin", :password => "123456", :password_confirmation => "123456" })
Requisition.create!(number: 000001,
                    create_at: Date.today,
                    item: 10, material: "aaa001",
                    description: "Material de calidad para electricidad",
                    quantity: 2,
                    unit: "Lt",
                    contact_person: "Joaquin Becerro",
                    observations: "We need best quality")
