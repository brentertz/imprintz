class PagesController < ApplicationController
  def index
    @contact = Contact.new(:id => 1)
  end

end
