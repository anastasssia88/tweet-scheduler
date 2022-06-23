class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        # params: 
        # {"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"test3@mail.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Create User"}
        # params[:user]: 
        # "user"=>{"email"=>"test3@mail.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path, notice: "Successfully created an account"
        else 
            # flash[:alert] = "Something was wrong"
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation);
    end
end