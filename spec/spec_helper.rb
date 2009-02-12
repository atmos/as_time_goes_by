require 'sinatra'
require 'spec'
require 'sinatra/test/rspec'
require 'webrat/sinatra'
require 'webrat/selenium'
require File.join(File.dirname(__FILE__), '..', 'as_time_goes_by.rb')

if ENV['SELENIUM'].nil?
  Webrat.configuration.mode = :sinatra
else
  Webrat.configuration.mode = :selenium
  Webrat.configuration.application_port = 4567
  Webrat.configuration.application_type = :sinatra
end

Spec::Runner.configure do |config|
  config.include(Webrat::Methods)
  config.include(Webrat::Selenium::Methods) # required for response.should have_selector compat
  if ENV['SELENIUM'].nil?
    config.include(Webrat::Matchers)
  else
    config.include(Webrat::Selenium::Matchers)
  end
  # config.before(:each) do
  #
  # end
end
