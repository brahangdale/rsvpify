class RsvpsController < ApplicationController
	before_action :authenticate_user!
	layout 'rsvps'
	def show
		@event = Event.where(code: params[:id]).last
		@feedback = @event.feedbacks.build
	end

	def create_feedback
		@event = Event.find(params[:id])
		params[:feedback][:response] = params[:feedback][:response].to_i
		feedback = @event.feedbacks.build(feedback_params)
		feedback.save
		render 'thank_you'
	end

	protected

	def feedback_params
		params.require(:feedback).permit(:email_id, :response, :message,  :no_of_peoples, user_infos_attributes: [:first_name, :last_name])
	end
	
end


