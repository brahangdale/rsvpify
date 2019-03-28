class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
    	t.integer :event_id
    	t.string :email_id
    	t.string :first_name
    	t.string :last_name
    	t.integer :response
    	t.integer :no_of_peoples
    	t.string :mobile
    	t.string :message
      t.timestamps
    end
  end
end
