class AddFeedbackidToAddress < ActiveRecord::Migration[5.1]
  def change
  	add_column :addresses, :feedback_id, :integer
  end
end
