require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

# The app.rb will act as the Router and the Controller of your MVC app.
# The routing part is the get '/' and the controller part is the blocks passed to the get
# (and other HTTP verbs as we'll see...) method

get '/' do
  'My first sinatra APP'
end
