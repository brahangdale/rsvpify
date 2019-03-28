class UsersController < ApplicationController
	before_action :authenticate_user!
	def edit
		@user = current_user
	end
	
	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:notice] = "user update successfully"
			redirect_to user_path(@user)
		else
			render 'edit'
		end

	end
 	
	private 
	def user_params
		params.require(:user).permit(:first_name,:lst_name)
	end
end