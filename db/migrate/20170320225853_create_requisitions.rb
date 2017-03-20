class CreateRequisitions < ActiveRecord::Migration[5.0]
  def change
    create_table :requisitions do |t|
      t.integer :number
      t.date :create_at
      t.integer :item
      t.string :material
      t.text :description
      t.float :quantity
      t.string :unit
      t.string :contact_person
      t.text :observations

      t.timestamps
    end
  end
end
