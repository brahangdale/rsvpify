class ChangeDatatypeOfMessageInFeedback < ActiveRecord::Migration[5.1]
  def change
  	change_column :feedbacks, :message, :text
  end
end
