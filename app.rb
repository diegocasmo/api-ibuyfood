require 'dotenv'
require 'sinatra/base'
require 'sinatra/activerecord'

# Load environment variables
Dotenv.load

# Application files
require './routes/verification_codes'

class IBuyFoodApp < Sinatra::Base

  register Sinatra::ActiveRecordExtension

  configure :development, :test do
    # Listen on all interfaces
    set :bind, '0.0.0.0' unless Sinatra::Base.production?
  end

  configure :production, :test, :development do
    # Load database configuration
    set :database_file, 'config/database.yml'
  end

  register Sinatra::IBuyFoodApp::Routes::VerificationCodes

  # Start the server if ruby file executed directly
  run! if app_file == $0
end
