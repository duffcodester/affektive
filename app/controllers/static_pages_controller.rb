class StaticPagesController < ApplicationController
    def index
      @name = params[:name]
      @email = params[:email]
      @message = params[:message]
      ContactMailer.contact_email(params[:name], @email, @message).deliver
    end
end
