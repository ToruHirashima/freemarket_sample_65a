class ChangeDatatypeAreaOfDeliveries < ActiveRecord::Migration[5.2]
  def change
    change_column :deliveries, :area, :integer
  end
end
