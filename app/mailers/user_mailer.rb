class UserMailer < ApplicationMailer
  default from: "contact@tomgrow.com"

  def contact_form(email, name, message)
    @message = message
      mail(:from => email,
          :to => 'td.csiamcorp@gmail.com',
          :subject => "A new contact form message from #{name}")
    end

  def welcome(user)
    @appname = "Tom's Growshop"
    mail( :to => user.email,
          :subject => "Welcome to #{@appname}!")
  end

end
