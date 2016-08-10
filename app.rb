require 'sinatra/base'
require 'sinatra/namespace'
require 'sinatra/activerecord'

class IBuyFoodApp < Sinatra::Base

  configure :development, :test do
    # Load environment variables
    require 'dotenv'
    Dotenv.load
    set :bind, '0.0.0.0' # Listen on all interfaces
  end

  # Load database configuration
  register Sinatra::ActiveRecordExtension
  set :database_file, 'config/database.yml'

  # Application files
  require './routes/verification_codes'
  register Sinatra::IBuyFoodApp::Routes::VerificationCodes

  # Start server if ruby file is executed directly
  run! if app_file == $0
end
