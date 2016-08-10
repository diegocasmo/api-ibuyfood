require File.expand_path '../../spec_helper.rb', __FILE__

RSpec.describe 'VerificationCode routes', :type => :routing do

  it 'should allow accessing the home page' do
    get '/api/hello_world'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello world!')
  end
end
