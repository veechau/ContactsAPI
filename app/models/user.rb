class User < ActiveRecord::Base
  has_many :contacts, dependent: :destroy

  has_many :contact_shares,
  dependent: :destroy,
  primary_key: :id,
  foreign_key: :contact_id,
  class_name: 'ContactShare'

  has_many :shared_contacts,
  through: :contact_shares,
  source: :contact

  has_many :comments, as: :commentable

  has_many :groupings
end
