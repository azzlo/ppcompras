# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Add default Admin user
User.create!({:name => "administrator", :email => "admin@admin", :password => "123456", :password_confirmation => "123456" })
Supplier.create!({:name => "111001", :email => "111001@supplier", :password => "111001", :password_confirmation => "111001" })
Supplier.create!({:name => "111002", :email => "111002@supplier", :password => "111002", :password_confirmation => "111002" })
Supplier.create!({:name => "111003", :email => "111003@supplier", :password => "111003", :password_confirmation => "111003" })
Supplier.create!({:name => "111004", :email => "111004@supplier", :password => "111004", :password_confirmation => "111004" })
Supplier.create!({:name => "111005", :email => "111005@supplier", :password => "111005", :password_confirmation => "111005" })
Supplier.create!({:name => "111006", :email => "111006@supplier", :password => "111006", :password_confirmation => "111006" })
Supplier.create!({:name => "111007", :email => "111007@supplier", :password => "111007", :password_confirmation => "111007" })
Supplier.create!({:name => "111008", :email => "111008@supplier", :password => "111008", :password_confirmation => "111008" })
Supplier.create!({:name => "111009", :email => "111009@supplier", :password => "111009", :password_confirmation => "111009" })
Supplier.create!({:name => "111010", :email => "111010@supplier", :password => "111010", :password_confirmation => "111010" })
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
