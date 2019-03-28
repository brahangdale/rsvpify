class AddEventIdToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :event_id, :integer
  end
end
