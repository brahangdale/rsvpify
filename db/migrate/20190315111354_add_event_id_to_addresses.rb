class AddEventIdToAddresses < ActiveRecord::Migration
  def change
  	add_column :addresses ,:event_id, :integer
  end
end
