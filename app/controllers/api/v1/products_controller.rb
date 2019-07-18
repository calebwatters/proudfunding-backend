class Api::V1::ProductsController < ApplicationController
    skip_before_action :authorized
    def index 
        products = Product.all 
        render json: products
    end
end
