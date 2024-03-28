module Helpers
  module Cuba

    def mount(app)
      result = app.call(req.env)
      halt result if result[0] != 404
    end
    
  end
end

