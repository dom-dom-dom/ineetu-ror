class DropLists < ActiveRecord::Migration
  def up
  	drop_table :lists

  end

  def down
  	create_table :lists do |t|
    	t.integer :user_id
    	t.string :title
    	t.text :description
		t.timestamps
	end
  end

end
