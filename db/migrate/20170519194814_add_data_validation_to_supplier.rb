class AddDataValidationToSupplier < ActiveRecord::Migration[5.0]
  def change
    add_column :suppliers, :data_validation, :boolean, default: true
  end
end
