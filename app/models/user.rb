class User < ApplicationRecord
    has_many :projects
    has_many :cart_items
    
end
