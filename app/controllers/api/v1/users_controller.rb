class Api::V1::UsersController < ApplicationController
    # skip_before_action :authorized
    def index 
        users = User.all 
        render json: users
    end

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def show 
        user = User.find(params[:id]) 
        render json: user
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: { user: UserSerializer.new(@user) }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

     def update
        @user = User.find(current_user.id)
        @user.update(user_params)


        render json: { user: UserSerializer.new(@user) }, status: :accepted
    end

     private

    def user_params 
        params.require(:user).permit( :name, :email, :image_url)
    end

end
