# frozen_string_literal: true

module Routes
  class Signup < Cuba
    define do

      # index, create
      on root do
        # index
        on get do
          render "signup/index"
        end

        # create
        on post do
          res.write "Routes::Signup #create"
        end
      end

      # default
      on default do
        res.write "Routes::Signup #default"
      end

    end
  end
end

