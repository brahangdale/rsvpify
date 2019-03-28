class CreateUserInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :user_infos do |t|
    	t.string :first_name
    	t.string :last_name
    	t.integer :feedback_id
    	t.timestamps
    end
  end
end
