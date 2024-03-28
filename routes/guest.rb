module Routes
  class Guest < Cuba
    define do

      on 'login' do
        on get do
          res.write 'GET /login'
        end

        on 'post' do
          res.write 'POST /login'
        end

        on default do
          res.write 'DEFAULT /login'
        end
      end

      on 'signup' do
        on root do
          res.write 'GET /signup'
        end

        on post do
          res.write 'POST /signup'
        end
      end

      on 'password/recovery' do
        on post do
          res.write 'POST /password/recovery'
        end

        on default do
          res.write 'DEFAULT /password/recovery'
        end
      end

      on 'password/reset/:id/:token' do |id, token|
        on post do
          res.write 'POST /password/reset'
        end

        on default do
          res.write 'DEFAULT /password/reset'
        end
      end

      on 'password/instrucions' do
        res.write 'GET /password/instructions'
      end

    end
  end
end
