class ChangeBodyTypeInEvents < ActiveRecord::Migration
  def change
  	 change_column :events, :category_id, :integer
  end
end
