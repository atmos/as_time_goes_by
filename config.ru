# To use with thin 
#  thin start -p PORT -R config.ru

require File.join(File.dirname(__FILE__), 'as_time_goes_by.rb')

disable :run
set :env, :production
run Sinatra.application
