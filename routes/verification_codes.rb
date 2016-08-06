module Sinatra
  module IBuyFoodApp
    module Routes
      module VerificationCodes

        def self.registered(app)

          app.get '/' do
            'Hello world!'
          end
        end
      end
    end
  end
end
