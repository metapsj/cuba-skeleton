# frozen_string_literal: true

module Routes
  class Signout < Cuba
    define do

      # index, destroy
      on root do
        # index
        on get do
          render "signout/index"
        end

        # destroy
        on delete do
          res.write "Routes::Signout #destroy"
        end
      end

      # default
      on default do
        res.write "Routes::Signup #default"
      end

    end
  end
end
