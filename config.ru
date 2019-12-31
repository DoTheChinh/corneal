require './config/environment'
require './controllers/application_controller'
require 'em/pure_ruby'
require 'sinatra/reloader'
require 'em/pure_ruby'
require 'eventmachine'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end
use Rack::MethodOverride

use CupcakeController
run ApplicationController
