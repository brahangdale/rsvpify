class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :event_name  
    	t.datetime :start_date
    	t.datetime :end_date
    	t.string  :place_name
    	t.string  :site_name
    	t.timestamps
    end
  end
end
