class SessionController < ApplicationController
    def create
        puts "Begining Create!"
        begin
          @user = User.from_omniauth(request.env['omniauth.auth'])
          puts @user
          puts "boop"
          session[:user_id] = @user.id
          flash[:success] = "Welcome, #{@user.name}!"
        rescue
          flash[:warning] = "There was an error while trying to authenticate you..."
        end
        redirect_to root_path
    end
    def destroy
      if current_user
        session.delete(:user_id)
        flash[:success] = 'See you!'
      end
      redirect_to root_path
    end
end