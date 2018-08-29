class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def edit
        @user = User.find(params[:id])
    end
    
    def create
        @user = User.new(user_params)

        if @user.save
            @save_success = 'Y'
            render 'new'
        else
            @save_success = 'N'
            render 'new'
        end
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
            @save_success = 'Y'
            render 'edit'
        else
            @save_success = 'N'
            render 'edit'
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        redirect_to users_path
    end

private
    def user_params
        params.require(:user).permit(:name, :email, :city)
    end

end
