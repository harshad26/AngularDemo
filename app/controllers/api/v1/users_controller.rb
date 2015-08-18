module Api::V1
  class UsersController < ApplicationController
  	def index
  		@users = User.all
  		render json: @users, status: 200
  		#redirect_to users_path
  	end

    # POST /v1/events
    def create
      render json: params.to_json
    end

  end
end