class AddSelectedToOffer < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :selected, :boolean, default: false
  end
end
