module Api
  module V1
    class UsersController < ApplicationController
      before_action :authenticate_user!

      respond_to :json

      def me
        respond_with(user: current_user)
      end
    end
  end
end