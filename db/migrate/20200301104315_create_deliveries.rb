class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :fee_burden, null: false
      t.integer :service, null: false
      t.string :area, null: false
      t.integer :handling_time, null: false
      t.timestamps
    end
  end
end
