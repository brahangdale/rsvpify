class AddCodeColumnToEvents < ActiveRecord::Migration
  def change
  	 add_column :events, :code , :string
  	 
  end
end
