class UserMailer < ApplicationMailer
	default from: "rsvpify@gmail.com"

	def feedback_mail(person1 , person2)
		@person1 = person1
		@person2 = person2
		mail(to: user.email, subject:  'plese send feedback')
	end
end
