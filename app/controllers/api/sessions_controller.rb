class Api::SessionsController < ApplicationController
	respond_to :json
	skip_before_action :verify_authenticity_token
	def create
		user  = User.find_by_email(params[:email])

		if user&.valid_password?(params[:password])
			render json: user.as_json(only:[:email, :authentication_token])
		else
			head(:unauthorized)
		end
	end
	def  destroy
	end
end