class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
    	t.string  :name
      t.string  :address
    	t.string  :city
    	t.string  :state
    	t.string  :country
    	t.string  :zipcode
    	t.string  :mob_no
    end
  end
end
