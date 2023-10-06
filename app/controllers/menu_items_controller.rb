class MenuItemsController < ApplicationController

    def index
      @menu_items = MenuItem.all  
    end
    
    def show
      @menu_items = MenuItem.find(params[:id])
    end  
    
    def new 
      @menu_items = MenuItem.new
    end    

    def create
      @menu_items = MenuItem.new(menu_params)
      if @menu_items.save
        redirect_to @menu_items
      else
        render :new, status: :unprocessable_entity
      end
    end
    def edit
      @menu_items = MenuItem.find(params[:id])
    end
    
    def update
      @menu_items = MenuItem.find(params[:id])
      if @menu_items.update(menu_params)
        redirect_to @menu_items
      else
        render :edit, status: :unprocessable_entity
      end
    end
    def delete
    end
    
    private
    def menu_params
        params.require(:menu_item).permit(:name, :description, :price, :image)
    end 
end
