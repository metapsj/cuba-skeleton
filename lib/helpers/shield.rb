module Helpers
  module Shield

    def current_user
      authenticated(Models::User)
    end

  end
end
