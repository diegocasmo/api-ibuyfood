require File.expand_path '../../spec_helper.rb', __FILE__

describe 'Verification Codes Routing' do

  it 'should allow accessing the home page' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello world!')
  end
end
