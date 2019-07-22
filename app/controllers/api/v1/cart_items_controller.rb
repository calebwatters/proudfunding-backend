class Api::V1::CartItemsController < ApplicationController
    skip_before_action :authorized
    def index 
        cart_items = CartItem.all 
        render json: cart_items
    end

    def create
        cart_item = CartItem.new(cart_item_params)

        if cart_item.save 
            render json: cart_item 
        else
            render json: {message: 'There was an issue with your cart_item submission'}
        end
    end

    def show
        cart_item = CartItem.find(params[:id])
        render json: cart_item
    end

    private 

    def cart_item_params
        params.require(:cart_item).permit(:user_id, :product_id)
    end
end
