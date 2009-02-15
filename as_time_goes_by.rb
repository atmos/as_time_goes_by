require 'rubygems'
require 'sinatra'
gem 'data_objects', '~>0.9.11'
require 'do_sqlite3'
gem 'dm-core', '~>0.9.10'
require 'dm-core'
require File.join(File.dirname(__FILE__), 'lib', 'as_time_goes_by')

AsTimeGoesBy::Database.setup

set :public, 'public'
set :views,  'views'

get '/' do
  haml :index
end
