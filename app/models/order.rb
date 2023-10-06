class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, class_name: 'CartItem', foreign_key: :order_id
  has_many :cart_items
end
