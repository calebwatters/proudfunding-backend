class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  # login
  def create
    @user = User.find_by(email: user_login_params[:email])
    #User#authenticate comes from BCrypt
    #TODO: add google auth token verification
    auth = GoogleSignIn::Identity.new(params[:user][:token])
    if @user && auth != nil
      # encode token comes from ApplicationController
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    else
      # if params[:token] === valid 
         user = User.create(user_params)
        # else
        token = encode_token({ user_id: user.id })
        render json: { user: UserSerializer.new(user), jwt: token }, status: :accepted
      # render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private

  def user_login_params
    params.require(:user).permit(:name, :email, :image_url, :token)
  end

    def user_params 
        params.require(:user).permit( :name, :email, :image_url)
    end
end