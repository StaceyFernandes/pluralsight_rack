require_relative 'users_application'
require_relative 'rides_application'
require_relative 'database'
require_relative 'api_key'
require_relative 'application_helpers'

use ApiKey

map('/users') do
  run UserApplication.new
end

map('/rides') do
  run RidesApplication.new
end
