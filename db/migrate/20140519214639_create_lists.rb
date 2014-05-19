class CreateLists < ActiveRecord::Migration
  def up
    create_table :lists do |t|
	t.timestamps
    end
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
