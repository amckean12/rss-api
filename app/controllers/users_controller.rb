class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def show
    end

    def create
        @user = User.new(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
