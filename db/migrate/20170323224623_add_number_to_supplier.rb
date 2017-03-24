class AddNumberToSupplier < ActiveRecord::Migration[5.0]
  def change
    add_column :suppliers, :number, :integer
  end
end
