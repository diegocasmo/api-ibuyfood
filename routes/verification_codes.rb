module Sinatra
  module IBuyFoodApp
    module Routes
      module VerificationCodes

        def self.registered(app)

          app.register Sinatra::Namespace

          app.namespace '/api' do

            get '/hello_world' do
              'Hello world!'
            end

          end
        end
      end
    end
  end
end
