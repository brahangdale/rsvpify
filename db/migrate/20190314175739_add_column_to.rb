class AddColumnTo < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :lst_name, :string
  end
end
