class CreatePostVotes < ActiveRecord::Migration[5.0]
  def change
  	create_table :post_votes do |k|
  		k.integer :votes
  		k.integer :post_id

  		k.timestamps
  	end
  end
end
