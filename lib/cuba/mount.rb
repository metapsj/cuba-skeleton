# frozen_string_literal: true

class Cuba
  def mount(app)
    result = app.call(req.env)
    halt result if result[0] != 404
  end
end

