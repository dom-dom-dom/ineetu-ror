class Addingtaskstable < ActiveRecord::Migration
  def change
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
