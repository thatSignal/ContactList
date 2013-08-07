require 'addressable/uri'
require 'rest-client'

index = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.json',
  query_values: {
    :id => 1,
    'category2[second_key]' => 'second value'
  }
).to_s

# RestClient.get(index)

create = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.json',
).to_s

# RestClient.post(create, {
#     :user => {
#       :username => "muffin",
#       :email => "crumblytopping@muffins.com"
#     }
#   })

put = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/2'
).to_s

RestClient.put(put, {
  :user => {
    username: 'PECAN',
    email: 'pecan@nutworld.com'
  }
  #'user[username]' => "PEANUT",
  #'user[email]' => "iampeanut@world.com"
})