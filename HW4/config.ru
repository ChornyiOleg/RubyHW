# frozen_string_literal: true

require './app/pet'

use Rack::Reloader, 0
use Rack::Static, urls: ['/public']
use Rack::Auth::Basic do |user, password|
  user == 'master' && password == 'myPet1'
end
run Pet
