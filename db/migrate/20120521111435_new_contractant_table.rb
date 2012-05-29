class NewContractantTable < ActiveRecord::Migration
  def up
    create_table :contractants do |t|
      t.string :username
      t.string :password_hash
      t.string :password_salt

      t.timestamps
  	end
  end

  def down
    drop_table :contractants
  end
end