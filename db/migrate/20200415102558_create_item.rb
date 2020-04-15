class CreateItem < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :text, null: false
      t.references :category, type: :bigint, null: false, foreign_key: true
      t.references :size, type: :bigint, foreign_key: true
      t.string :brand_name
      t.integer :condition, null: false
      t.integer :price, null: false
      t.references :user, null: false, foreign_key: true
      t.integer :status, null:false
      t.timestamps
    end
  end
end
