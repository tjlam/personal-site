class PagesController < ApplicationController 
	def index
		@contact = Contact.new
	end

	def create 
		@contact = Contact.new(contact_params)

		if @contact.save 
			name = params[:contact][:name]
			email = params[:contact][:email]
			message = params[:contact][:message]

			MyMailer.send_email(name, email, message).deliver 
			flash[:success] = "Message sent!"
			redirect_to root_url
		else 
			flash[:danger] = "An error has occured..."
			redirect_to root_url
		end
	end

	private 
		def contact_params 
			params.require(:contact).permit(:name, :email, :message)
		end
end