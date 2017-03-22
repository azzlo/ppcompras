class AddSupplierToOffer < ActiveRecord::Migration[5.0]
  def change
    add_reference :offers, :supplier, foreign_key: true
  end
end
