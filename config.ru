require_relative "lib/web"

if ENV['RACK_ENV'] == 'production'
  use Rack::Session::Cookie, secret: ENV['SECRET']
end

use Rack::Static, urls: ['/public']
use Rack::CommonLogger

run Cuba
