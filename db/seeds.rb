# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Add default Admin user
User.create!({:name => "administrator", :email => "admin@admin", :password => "123456", :password_confirmation => "123456" })
Supplier.create!({:number => "111001", :name => "Fenix Ferreteria S.A de S.V.", :email => "111001@supplier", :password => "111001", :password_confirmation => "111001" })
Supplier.create!({:number => "111002", :name => "SteelSeries", :email => "111002@supplier", :password => "111002", :password_confirmation => "111002" })
Supplier.create!({:number => "111003", :name => "Microsoft", :email => "111003@supplier", :password => "111003", :password_confirmation => "111003" })
Supplier.create!({:number => "111004", :name => "Quimicos mialegria", :email => "111004@supplier", :password => "111004", :password_confirmation => "111004" })
Supplier.create!({:number => "111005", :name => "Azzlo", :email => "111005@supplier", :password => "111005", :password_confirmation => "111005" })
Supplier.create!({:number => "111006", :name => "Henkel", :email => "111006@supplier", :password => "111006", :password_confirmation => "111006" })
Supplier.create!({:number => "111007", :name => "Condumex", :email => "111007@supplier", :password => "111007", :password_confirmation => "111007" })
Supplier.create!({:number => "111008", :name => "IGESA", :email => "111008@supplier", :password => "111008", :password_confirmation => "111008" })
Supplier.create!({:number => "111009", :name => "HP", :email => "111009@supplier", :password => "111009", :password_confirmation => "111009" })
Supplier.create!({:number => "111010", :name => "CISCO", :email => "111010@supplier", :password => "111010", :password_confirmation => "111010" })
Requisition.create!(number: 100001,
                    create_at: Date.today,
                    item: 10, material: "aaa001",
                    description: "Material de calidad para electricidad-1",
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
