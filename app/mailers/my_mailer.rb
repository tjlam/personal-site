class MyMailer < ApplicationMailer
	def send_email(name, email, message)
		@name = name
		@email = email
		@message = message
		mail(:to=>"tylerlam888@gmail.com", :subject=>"Amazon SES Email")
	end
end
