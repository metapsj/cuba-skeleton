# frozen_string_literal: true

module Routes
  class User < Cuba
    define do

      # index, create
      on root do
        # index
        on get do
          render 'users/index'
        end

        # create
        on post do
          # params[:username, :password]
          res.write "Routes::User #create"
        end
      end

      # new
      on "new" do
        render 'users/new'
      end

      # show, edit, update, destroy
      on "(\\d+)" do |id|
        on get do
          # show
          on root do
            # params[:user_id]
            render 'users/show'
          end

          # edit
          on "edit" do
            # params[:user_id]
            render 'users/edit'
          end
        end

        # update
        on put do
          # params[:user_id, :username, :password]
          res.write "Routes::User #update"
        end

        # destroy
        on delete do
          # params[:user_id]
          res.write "Routes::User #destroy"
        end
      end

      # default
      on default do
        res.write "Routes::User #default"
      end

    end
  end
end
