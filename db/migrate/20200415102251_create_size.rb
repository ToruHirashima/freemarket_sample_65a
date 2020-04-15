class CreateSize < ActiveRecord::Migration[5.2]
  def change
    create_table :sizes do |t|
      t.string :kind_size, null:false
      t.timestamps
    end
  end
end
