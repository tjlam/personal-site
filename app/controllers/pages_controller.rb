class PagesController < ApplicationController 

	def send_email
		MyMailer.send_email(name: params[:name], email: params[:email], message: params[:message]).deliver
		flash[:success] = "Message sent!"
		redirect_to root_url

	end
end