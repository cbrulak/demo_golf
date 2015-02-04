class HomeController < ApplicationController
  def index
    
    @users = User.all
    @clubs = Club.all
  end
end
