class Feedback  <  ActiveRecord::Base
	belongs_to :event
	has_many :user_infos
	accepts_nested_attributes_for :user_infos


	enum response: ["Yes", "Maybe", "No"]

	scope  :accepted_rsvps_count, ->{ where(response: 'Yes').count }
	scope  :Maybe_rsvps_count, -> { where(response: 'Maybe').count }
	scope  :no_rsvps_count, -> { where(response: 'No').count }
end