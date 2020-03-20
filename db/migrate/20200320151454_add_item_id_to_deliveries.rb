class AddItemIdToDeliveries < ActiveRecord::Migration[5.2]
  def change
    add_reference :deliveries, :item, foreign_key: true
  end
end
