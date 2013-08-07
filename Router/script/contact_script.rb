require 'addressable/uri'
require 'rest-client'

contact_index = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1/contacts',
  query_values: {
    #none
  }
).to_s

#RestClient.get(contact_index)
#WORKS

#_______________________________________________

create = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts.json',
).to_s

# RestClient.post(create, {
#     :contact => {
#       :name => "Orionus",
#       :email => "o@rinus.com",
#       :address => "1 Asgard Way",
#       :phone => "987"
#
#     }
#   })
#WORKS

#_______________________________________________

put = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts/2'
).to_s

# RestClient.put(put, {
#   :contact => {
#     name: 'Eris',
#     email: 'cherrie@cherryface.com'
#   }
# })
#WORKS
