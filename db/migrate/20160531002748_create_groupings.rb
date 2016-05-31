class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.integer :user_id
      t.integer :contact_id
      
      t.timestamps null: false
    end
  end
end
