require 'rubygems'
require 'sinatra'
require 'do_sqlite3'
require 'dm-core'
require File.join(File.dirname(__FILE__), 'lib', 'as_time_goes_by')

AsTimeGoesBy::Database.setup

set :public, 'public'
set :views,  'views'

get '/' do
  haml :index
end
