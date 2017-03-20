class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.float :unit_pricing
      t.integer :delivery_days
      t.date :validity
      t.text :observations
      t.boolean :recommended
      t.integer :credit_days
      t.references :requisition, foreign_key: true

      t.timestamps
    end
  end
end
