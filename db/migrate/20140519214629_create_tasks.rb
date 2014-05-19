class CreateTasks < ActiveRecord::Migration
  def up
    create_table :tasks do |t|
    	t.string :title
    	t.text :description
    	t.string :priority
    	t.boolean :completed, :default => 0
    	t.date :date_completed
		t.timestamps
    end
  end

  def down
    create_table :tasks do |t|
      t.integer :list_id
      t.string :title
      t.text :description
      t.string :priority
      t.boolean :completed, :default => 0
      t.date :date_completed
    t.timestamps
    end
  end
end
