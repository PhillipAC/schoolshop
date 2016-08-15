class UsersController < ApplicationController
    load_and_authorize_resource

    def index
        @users = User.search(params[:search])
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        respond_to do |format|
            if @user.update(user_params)
                format.html { redirect_to users_path, notice: 'User was successfully updated.' }
            else
                format.html { render :edit }
            end
        end
    end

    private
    
    def user_params
      params.require(:user).permit(:admin, :banned, :worker)
    end
    
end
