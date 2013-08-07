# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  contacts = Contact.create!([
    { name: "Amalsavintha", email: "qotg@soawesome.com", phone: "(555) 555-1234", address: "1 cloud way" , user_id: 1 },
    { name: "Exia", email: "exia@exit.com", phone: "(123) 135-2468", address: "0 at No man's land", user_id: 1 },
    { name: "Milano", email: "iamacookie@milano.com", phone: "(987) 123-4567", address: "1 on my desk", user_id: 1 },

    { name: "Walnut", email: "letsgomr.walnut@imawalnut.com", phone: "not even a number", address: "on a tree", user_id:2 },
    { name: "Brazilian", email: "bnut@brazil.com", phone: "a brazil nut has no phone", address: "brazil is a place too", user_id:2 },
    { name: "Macadamia", email: "aloha@macadamia.net", phone: "(111) 111-1111", address: "in hawaii", user_id:2 }
    ])

    favs = Favorite.create!([
      { user_id: 1, contact_id: 1 },
      { user_id: 2, contact_id: 4 },
      { user_id: 2, contact_id: 5 }

    ])

end