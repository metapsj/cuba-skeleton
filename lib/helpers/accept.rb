module Helpers
  module Accept

    def accept_type
      req.env['HTTP_ACCEPT'] || 'text/html'
    end

  end
end

