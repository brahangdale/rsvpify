class Api::EventsController < ApplicationController
	acts_as_token_authentication_handler_for User

	def index
		@events = current_user.events
		render json:  {events: @events}.to_json
	end 
end