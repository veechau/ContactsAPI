class Contact < ActiveRecord::Base
  validates :user_id, :name, :email, uniqueness: true, presence: true

  belongs_to :owner,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: 'User'

  has_many :contact_shares,
  primary_key: :id,
  foreign_key: :contact_id,
  class_name: 'ContactShare'

  has_many :shared_users,
  through: :contact_shares,
  source: :user

  has_many :comments, as: :commentable

  has_many :groupings
end
