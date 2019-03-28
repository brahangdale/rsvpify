class CreateFeedback < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
    	t.integer "event_id",                   limit: 4
    	t.string  "email_id",                   limit: 255
    	t.string  "title",                      limit: 255
    	t.string  "first_name",                 limit: 255
    	t.string  "last_name",                  limit: 255
    	t.string  "rsvp_response",              limit: 255
    	t.string  "number_of_people_attending", limit: 255
    	t.string  "phone_number",               limit: 255
    	t.text    "comment"
    end
  end
end
