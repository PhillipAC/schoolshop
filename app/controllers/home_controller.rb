class HomeController < ApplicationController
  skip_authorization_check
  
  def show
    @annoucements = Annoucement.order("created_at DESC").first(5)
  end
end
