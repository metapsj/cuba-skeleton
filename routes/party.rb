# frozen_string_literal: true

module Routes
  class Party < Cuba
    define do

      # index
      on root do
        render 'parties/index'
      end

      # new
      on "new" do
        render 'parties/new'
      end

      on "(\\d+)" do |id|
        on get do
          # show
          on root do
            render 'parties/show'
          end

          # edit
          on "edit" do
            render 'parties/edit'
          end
        end

        # create
        on post do
          res.write "Routes::Party #create"
        end

        # update
        on put do
          res.write "Routes::Party #update"
        end

        # destroy
        on delete do
          res.write "Routes::Party #destroy"
        end
      end

      # default
      on default do
        res.write "Routes::Party #default"
      end

    end
  end
end

