class AddImageToPens < ActiveRecord::Migration[5.2]
  def change
  	add_column :pens, :image, :string
  end
end
