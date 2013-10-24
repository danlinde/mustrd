class Order < ActiveRecord::Base

	after_create :send_confirmation_email

	def send_confirmation_email
		#this will return an action mailer object unless you include deliver!
		OrderNotifier.confirmation_email(number_of_items).deliver!
	end

end
