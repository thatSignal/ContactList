require 'addressable/uri'
require 'rest-client'

favorite_index = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/2/favorites',
  query_values: {
    #none
  }
).to_s

#RestClient.get(favorite_index)
#WORKS

#_______________________________________________

create = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/favorites.json',
).to_s

# RestClient.post(create, {
#     :favorite => {
#       :user_id => 3,
#       :contact_id => 6
#     }
#   })


#_______________________________________________

put = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/favorites/2'
).to_s

# RestClient.put(put, {
#   :favorite => {
#     name: 'Eris',
#     email: 'cherrie@cherryface.com'
#   }
# })

#_____________________________________________________

show = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/favorites/2'
).to_s

RestClient.get(show)

#_____________________________________________________

delete = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/favorites/8'
).to_s

#RestClient.delete(delete)