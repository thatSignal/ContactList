require 'securerandom'

class User < ActiveRecord::Base
  attr_accessible :username, :email, :session_token

  validates :username, :email, :presence => true

  has_many(
    :contacts,
    :class_name => "Contact",
    :foreign_key => :user_id,
    :primary_key => :id,
    :dependent => :destroy
  )

  has_many(
    :favorites,
    :class_name => "Favorite",
    :foreign_key => :user_id,
    :primary_key => :id,
    :dependent => :destroy
  )

  has_many(
    :favorite_contacts,
    :through => :favorites,
    :source => :contact,
    :dependent => :destroy
  )

  def self.authenticate(username, email)
    user = User.find_by_username(username)
    if user && user.email == email
      return user
    else
      return nil
    end
  end

  def generate_token
    #make it
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
    #render or return it
    self.session_token
  end

end
