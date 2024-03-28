module Routes
  class Session < Cuba
    define do

      on 'login' do
        on get do
          res.write 'GET /login #index'
        end

        on post do
          res.write 'POST /login #create'
        end
      end
      
      on 'logout' do
        on delete do
          res.write 'DELETE /login #destroy'
        end
      end

    end
  end
end
