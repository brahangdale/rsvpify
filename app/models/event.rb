class Event < ActiveRecord::Base
	validates :event_name, presence: true
	validates :description,  length:{minimum: 10, maximum: 200}
	belongs_to :category
	belongs_to :user

	has_one  :address
	accepts_nested_attributes_for :address
	has_many :feedbacks
	before_create :set_event_code

	def set_event_code
		if self.code.blank?
			self.code = SecureRandom.hex(6)
		end
	end
end



