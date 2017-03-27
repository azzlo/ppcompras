class AddReceivedAtToRequisition < ActiveRecord::Migration[5.0]
  def change
    add_column :requisitions, :received_at, :date
  end
end
