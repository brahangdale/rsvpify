class HomeController < ApplicationController
	layout 'application'
		def home
		end

		def index
			@events = Event.all
		end
end