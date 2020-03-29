class RemoveUserIdToDeliveries < ActiveRecord::Migration[5.2]
  def change
    remove_column :deliveries, :user_id
  end
end
