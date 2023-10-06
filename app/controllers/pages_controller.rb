class PagesController < ApplicationController
  def home
  end

  def about
  end

  def menu
    @menu_items = MenuItem.all
  end

  def contact
  end  
end
