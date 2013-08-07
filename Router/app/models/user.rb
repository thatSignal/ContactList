class User < ActiveRecord::Base
  attr_accessible :username, :email
  validates :username, :email, :presence => true

  has_many(
    :contacts,
    :class_name => "Contact",
    :foreign_key => :user_id,
    :primary_key => :id
  )

  has_many(
    :favorites,
    :class_name => "Favorite",
    :foreign_key => :user_id,
    :primary_key => :id
  )

  has_many(
    :favorite_contacts,
    :through => :favorites,
    :source => :contact
  )

end
