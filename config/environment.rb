ENV['SINATRA_ENV'] ||= "cupcake_dev"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

# ActiveRecord::Base.establish_connection(
#   :adapter => "sqlite3",
#   :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
# )
ActiveRecord::Base.establish_connection(
  :adapter => "mysql2",
  :database => "db/#{ENV['SINATRA_ENV']}"
)

require './app/controllers/application_controller'
require_all 'app'
