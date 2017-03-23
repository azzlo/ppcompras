class AddFieldsToRequisitions < ActiveRecord::Migration[5.0]
  def change
    add_column :requisitions, :active, :boolean, default: false
    add_column :requisitions, :pending, :boolean, default: false
    add_column :requisitions, :complete, :boolean, default: false
  end
end
