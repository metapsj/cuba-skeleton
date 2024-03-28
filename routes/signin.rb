# frozen_string_literal: true

module Routes
  class Signin < Cuba
    define do

      # index, create
      on root do
        # index
        on get do
          render "signin/index"
        end

        # create
        on post do
          # params['username', 'password']
          parameters = req.params
          username = req.params['username']
          password = req.params['password']
          # user = Models::User.where(username: username)
          # user.authenticated?
          # success
          res.write <<~EOS
            Routes::Signin #create <br />
            username: #{username} <br />
            password: #{password} <br />
            params: #{parameters.inspect}
          EOS
          # fail
          # render || redirect
        end
      end

      # default
      on default do
        res.write "Routes::Signin #default"
      end

    end
  end
end


