class Item < ApplicationRecord

validates :item_name, presence: true 
validates :quantity, presence: true 


end
