module Routes
  class Activation < Cuba
    define do

      on 'signup' do
        on get do
          res.write 'GET /signup'
        end

        on post do
          res.write 'POST /signup'
        end
      end

      on 'password' do
        on 'recovery' do
          res.write 'GET /password/recovery'
        end

        on 'reset' do
          res.write 'GET /password/reset'
        end

        on 'instructions' do
          res.write 'GET /password/instructions'
        end
      end

    end
  end
end
