class Contact < ActiveRecord::Base
  attr_accessible :user_id, :name, :email, :phone, :address

  belongs_to(
    :user,
    :class_name => "User",
    :foreign_key => :user_id,
    :primary_key => :id
  )

  has_one(
    :favorite,
    :class_name => "Favorite",
    :foreign_key => :user_id,
    :primary_key => :id,
    :dependent => :destroy
  )


end
