class ContactShare < ActiveRecord::Base
  belongs_to :contact,
  foreign_key: :contact_id,
  primary_key: :id,
  class_name: 'Contact'

  belongs_to :user,
  foreign_key: :user_id,
  primary_key: :id,
  class_name: 'User'


end
