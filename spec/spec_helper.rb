require 'rack/test'
require 'rspec'
require 'faker'
require 'factory_girl'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../app.rb', __FILE__

# Factory girl setup
FactoryGirl.definition_file_paths = %w{./factories ./test/factories ./spec/factories}
FactoryGirl.find_definitions
RSpec.configure do |config|
  # build(:model) instead of FactoryGirl.build(:model)
  config.include FactoryGirl::Syntax::Methods
end

module RSpecMixin
  include Rack::Test::Methods
  def app() IBuyFoodApp end
end

RSpec.configure { |c| c.include RSpecMixin }
