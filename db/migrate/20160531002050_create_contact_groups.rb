class CreateContactGroups < ActiveRecord::Migration
  def change
    create_table :contact_groups do |t|
      t.string :group_name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
