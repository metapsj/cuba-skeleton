# frozen_string_literal: true

module Routes
  class Event < Cuba
    define do

      # index, create
      on root do
        # index
        on get do
          render 'events/index'
        end

        # create
        on post do
          # params[:event_type_label, :event_number, :label, :description, :location_id]
          res.write "Routes::Event #create"
        end
      end

      # new
      on "new" do
        render 'events/new'
      end

      # show, edit, update, destroy
      on "(\\d+)" do |id|
        on get do
          # show
          on root do
            # params[:event_id]
            render 'events/show'
          end

          # edit
          on "edit" do
            # params[:event_id]
            render 'events/edit'
          end
        end

        # update
        on put do
          # params[:event_id, :event_type_label, :event_number, :label, :description, :location_id]
          res.write "Routes::Event #update"
        end

        # destroy
        on delete do
          # params[:event_id]
          res.write "Routes::Event #destroy"
        end
      end

      # default
      on default do
        res.write "Routes::Event #default"
      end

    end
  end
end


