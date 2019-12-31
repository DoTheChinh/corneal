require './config/environment'
require 'em/pure_ruby' if not defined?(EventMachine)

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

end
