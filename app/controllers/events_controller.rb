class EventsController < ApplicationController
	before_action :authenticate_user!
	layout 'events'

	def index
		@categories = Categories.all
	end

	def new
		@event = current_user.events.build
		@event.build_address
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
		@feedbacks = @event.feedbacks
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		 @event.update(event_params)
			redirect_to event_path(@event)
		
	end
	
  def state
  	@states = CS.get(params[:country])
  end
	

	def destroy 
		@event = Event.find(params[:id])
		@event.destroy
		flash[:delete] = "event is delete"
		redirect_to home_index_path
	end
	
	
	def create_feedback
		@feedback = Feedback.new(feedback_params)
		@feedback.user_id = current_user.id
		@feedback.save
		event =  @feedback.event
		person1 = event.user
		person2 = @feedback.user
		Resque.enqueue(Archieve, person1.id,  person2.id)
		redirect_to  event_path(event)
	end

	private
	def event_params
		params.require(:event).permit(:event_name, :category_id, :event_date,:code,:user_id, :description, address_attributes: [:name, :address, :city, :state, :country, :zipcode, :mob_no, :feedback_id])
	end   

	def  feedback_params
		params.require(:feedback).permit(:event_id, :email_id, :first_name, :last_name,  :response, :no_of_peoples, :mobile, :message)
	end

end
 