class CreateAddress < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.string :name
    	t.string :address_line_1
    	t.string :address_line_2
    	t.string :city
    	t.string :state
    	t.string :zipcode
    	t.string :country
    	t.string :mobile_number
    end
  end
end
