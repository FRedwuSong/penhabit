class CreatePens < ActiveRecord::Migration[5.2]
  def change
    create_table :pens do |t|
      t.string :name
      t.string :brand     
      t.text :description
      t.float :price, default: 0
      t.integer :user_id		
      t.timestamps
    end
  end
end
