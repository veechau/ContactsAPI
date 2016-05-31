class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :commenter_id, null: false
      t.string :commentable, null: false
      t.text :comment, null: false

      t.timestamps null: false
    end
  end
end
