class AddLastDataValidationToSupplier < ActiveRecord::Migration[5.0]
  def change
    add_column :suppliers, :last_data_validation_at, :date
  end
end
