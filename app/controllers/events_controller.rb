class EventsController < ApplicationController
	layout 'events'
	def index
		@categories = Categories.all
	end
	def new
		@event = Event.new
		@event.addresses.build  
	end
	def create
		@event = Event.new(event_params)
		@event.user_id = current_user.id
		if @event.save
			flash[:notice] = "event is create"
			redirect_to event_path(@event)
		else
			render 'new'
		end
	end
	def show
		@event = Event.find(params[:id])
	end

	def address
		@event = current_user
		@event.state = "address"
		@event.save
		redirect_to event_path(@event)
	end


	def state
		@states = CS.get(params[:country])


	end  
	private
	def event_params
		params.require(:event).permit(:event_name, :category_id, :start_date,:end_date, :place_name, :site_name,:code,:user_id,
			addresses_attributes: [:name, :event_id, :address_line_1,:address_line_2, :city, :state, :zipcode, :country, :mobile_number])
	end

end


