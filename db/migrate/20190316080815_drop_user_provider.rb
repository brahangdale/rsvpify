class DropUserProvider < ActiveRecord::Migration
  def change
  	drop_table :user_providers
  end
end
