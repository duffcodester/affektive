class StaticPagesController < ApplicationController
    def index
      if params[:email]
        @name = params[:name]
        @email = params[:email]
        @message = params[:message]
        ContactMailer.contact_email(@name, @email, @message).deliver
      end
    end
end
