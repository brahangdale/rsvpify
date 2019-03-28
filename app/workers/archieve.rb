class Archieve
	@queue = :feedback_queue

	def self.perform(person1_id, person2_id)

		person1 = User.find(person1_id)
		person2 = User.find(person2_id)

		UserMailer.feedback_mail(person1, person2).deliver_later
	end
end

