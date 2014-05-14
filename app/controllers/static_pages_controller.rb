class StaticPagesController < ApplicationController
    def index
      @contact = Contact.new
    end
end
