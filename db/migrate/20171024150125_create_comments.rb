class CreateComments < ActiveRecord::Migration[5.0]
  def change
  	create_table :comments do |k|
  		k.string :body
  		k.integer :user_id
  		k.integer :post_id

  		k.timestamps
  	end
  end
end
