class FavoriteContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :favorite_contact, :string
  end
end
