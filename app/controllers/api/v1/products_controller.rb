class Api::V1::ProductsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    def index 
        products = Product.all 
        render json: products
    end

    def create
        product = Product.new(product_params)

        if product.save 
            render json: product 
        else
            render json: {message: 'There was an issue with your product submission'}
        end
    end

    def show
        product = Product.find(params[:id])
        render json: product
    end

    def destroy
        product = Product.find(params[:id])
        product.destroy
    end

    private 

    def product_params
        params.require(:product).permit(:name, :description, :image1_url, :image2_url, :image3_url, :price, :project_id)
    end
end
