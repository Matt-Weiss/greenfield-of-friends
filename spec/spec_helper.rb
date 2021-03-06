ENV["RACK_ENV"] = "test"

require 'bundler'

Bundler.require(:default, :test)
require File.expand_path('../../config/environment.rb', __FILE__)
require 'capybara/dsl'

Capybara.app = FriendshipsApp
Capybara.save_path = 'tmp/capybara'

DatabaseCleaner.strategy = :truncation

module RSpecMixin
  include Rack::Test::Methods
  def app() FriendshipsApp end
  # def app() Sinatra::Application end
end

RSpec.configure do |c|
  c.include Capybara::DSL

  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end

  c.include RSpecMixin
end
