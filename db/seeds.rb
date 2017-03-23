# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Add default Admin user
User.create!({:name => "administrator", :email => "admin@admin", :password => "123456", :password_confirmation => "123456" })
Requisition.create!(number: 100001,
                    create_at: Date.today,
                    item: 10, material: "aaa001",
                    description: "Material de calidad para electricidad",
                    quantity: 2,
                    unit: "Lt",
                    contact_person: "Joaquin Becerro",
                    observations: "We need best quality")
Requisition.create!(number: 100002,
                    create_at: Date.today,
                    item: 10, material: "aaa001",
                    description: "Material de calidad para electricidad",
                    quantity: 2,
                    unit: "Lt",
                    contact_person: "Joaquin Becerro",
                    observations: "We need best quality")
Requisition.create!(number: 100003,
                    create_at: Date.today,
                    item: 10, material: "aaa001",
                    description: "Material de calidad para electricidad",
                    quantity: 2,
                    unit: "Lt",
                    contact_person: "Joaquin Becerro",
                    observations: "We need best quality")
Requisition.create!(number: 100004,
                    create_at: Date.today,
                    item: 10, material: "aaa001",
                    description: "Material de calidad para electricidad",
                    quantity: 2,
                    unit: "Lt",
                    contact_person: "Joaquin Becerro",
                    observations: "We need best quality")
Requisition.create!(number: 100005,
                    create_at: Date.today,
                    item: 10, material: "aaa001",
                    description: "Material de calidad para electricidad",
                    quantity: 2,
                    unit: "Lt",
                    contact_person: "Joaquin Becerro",
                    observations: "We need best quality")
Requisition.create!(number: 100006,
                    create_at: Date.today,
                    item: 10, material: "aaa001",
                    description: "Material de calidad para electricidad",
                    quantity: 2,
                    unit: "Lt",
                    contact_person: "Joaquin Becerro",
                    observations: "We need best quality")
Requisition.create!(number: 100007,
                    create_at: Date.today,
                    item: 10, material: "aaa001",
                    description: "Material de calidad para electricidad",
                    quantity: 2,
                    unit: "Lt",
                    contact_person: "Joaquin Becerro",
                    observations: "We need best quality")
Requisition.create!(number: 100008,
                    create_at: Date.today,
                    item: 10, material: "aaa001",
                    description: "Material de calidad para electricidad",
                    quantity: 2,
                    unit: "Lt",
                    contact_person: "Joaquin Becerro",
                    observations: "We need best quality")
Requisition.create!(number: 100009,
                    create_at: Date.today,
                    item: 10, material: "aaa001",
                    description: "Material de calidad para electricidad",
                    quantity: 2,
                    unit: "Lt",
                    contact_person: "Joaquin Becerro",
                    observations: "We need best quality")
Requisition.create!(number: 100010,
                    create_at: Date.today,
                    item: 10, material: "aaa001",
                    description: "Material de calidad para electricidad",
                    quantity: 2,
                    unit: "Lt",
                    contact_person: "Joaquin Becerro",
                    observations: "We need best quality")
