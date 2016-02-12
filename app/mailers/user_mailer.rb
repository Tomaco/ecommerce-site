class UserMailer < ApplicationMailer
	default from: "contact@tomgrow.com"

	def contact_form(email, name, message)
	  @message = message
	    mail(:from => email,
	        :to => 'td.csiamcorp@gmail.com',
	        :subject => "A new contact form message from #{name}")
	  end
end
