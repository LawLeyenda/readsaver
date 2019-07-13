class PagesController < ApplicationController
  def home
  end
  
  def hoot
    @comments = Comment.all
  end
  
  def login
  end
  
  def book
  end
  
  def followers
  end
  
  def following
  end
  
  def settings
  end
  
end
