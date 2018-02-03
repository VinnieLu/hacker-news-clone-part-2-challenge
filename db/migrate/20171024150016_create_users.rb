class CreateUsers < ActiveRecord::Migration[5.0]
  def change
  	create_table :users do |k|
  		k.string :name
  		k.string :email

  		k.timestamps
  	end
  end
end
