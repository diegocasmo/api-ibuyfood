require 'dotenv'
require 'sinatra/base'

# Load environment variables
Dotenv.load

# Application files
require './routes/verification_codes'

class IBuyFoodApp < Sinatra::Base

  configure :development do
    # Listen on all interfaces
    set :bind, '0.0.0.0' unless Sinatra::Base.production?
  end

  register Sinatra::IBuyFoodApp::Routes::VerificationCodes

  # Start the server if ruby file executed directly
  run! if app_file == $0
end
