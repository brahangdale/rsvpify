class CreateTableFeedbacks < ActiveRecord::Migration
  def change
    create_table :table_feedbacks do |t|
    	t.integer 	:event_id
			t.string   	:email_id
			t.string   	:title
	    t.string   	:first_name
	    t.string   	:last_name
	    t.string    :rsvp_response
	    t.string    :number_of_people_attending
      t.string  	:phone_number
			t.text      :comment
    end
  end
end
