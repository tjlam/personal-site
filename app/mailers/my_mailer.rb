class MyMailer < ApplicationMailer
	def send_email(name, email, comments)
		@name = name
		@email = email
		@comments = comments
		mail(:to=>"tylerlam888@gmail.com", :subject=>"Email from tylerlam.me")
	end
end
