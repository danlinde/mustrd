class OrderNotifier < ActionMailer::Base
  default from: "no-reply@mustrd.com"

  def confirmation_email(number_of_items)
  	@number_of_items = number_of_items

  	mail(to: 'ddlinde2@gmail.com', subject: 'Order Confirmation')
  end
end
