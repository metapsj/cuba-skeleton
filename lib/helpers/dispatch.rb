module Helpers
  module Dispatch

    def dispatch(controller)
      method = controller.call
      method.call

      # get
      #   /
      #   instance.index
      # get
      #   /new
      #   instance.new
      # get
      #   /:id/show
      #   instance.show
      # get
      #   /:id/edit
      #   instance.edit
      # post
      #   /
      #   instance.create
      # put
      #   /:id
      #   instance.update
      # delete
      #   /:id
      #   instance.destroy
    end

  end
end
