class AddFieldsToRequisitions < ActiveRecord::Migration[5.0]
  def change
    add_column :requisitions, :active, :boolean
    add_column :requisitions, :pending, :boolean
    add_column :requisitions, :complete, :boolean
  end
end
