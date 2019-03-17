class Event < ActiveRecord::Base
	
	belongs_to :category
	belongs_to :user
	has_many :addresses
	has_many :feedbacks
	accepts_nested_attributes_for :addresses
	
	before_create :set_event_code

	def set_event_code
		if self.code.blank?
			self.code = SecureRandom.hex(6)
		end
	end
end



