class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :phone
      t.string :category
      t.string :contact
      t.text :observations
      t.string :bank
      t.string :account_number
      t.string :number_branch_bank
      t.string :region
      t.string :last_tax_declaration
      t.string :rfc
      t.string :account_status
      t.string :constitutive_act
      t.string :policies

      t.timestamps
    end
  end
end
