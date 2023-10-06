class CartItem < ApplicationRecord
  after_create :addcartitem
  belongs_to :user
  belongs_to :menu_item
  belongs_to :order, optional: true

   private

    def addcartitem
        puts "item save into the addtocart"
    end
end
