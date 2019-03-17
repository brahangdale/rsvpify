class RemoveFieldNameFromEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :place_name
  	remove_column :events, :site_name
  end
end
