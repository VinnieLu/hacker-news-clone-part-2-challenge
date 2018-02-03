class CreateCommentVotes < ActiveRecord::Migration[5.0]
  def change
  	create_table :comment_votes do |k|
  		k.integer :votes
  		k.integer :comment_id

  		k.timestamps
  	end
  end
end
