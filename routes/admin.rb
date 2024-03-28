module Routes
  class Admin < Cuba
    define do

      # deprecate, exists in guest
      on 'login' do
        res.write 'GET /admin/login'
      end

      # authenticated
      # dashboard exists in user
      # type of dashboard should be defined by role
      on 'dashboard' do
        res.write 'GET /admin/dashboard'
      end

      # logout exists in user
      on 'logout' do
        res.write 'GET /admin/logout'
      end

      # not authorized
      on default do
        res.write 'DEFAULT /admin'
      end

    end
  end
end
