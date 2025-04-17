class UsersController < ApplicationController
   def new
      @user = User.new
   end
   def create
      @user = User.new(user_params)
      if @user.save
         redirect_to events_path, notice: "User was successfully created."
      else
         render :new
      end
   end
   def show
      @user = User.find(current_user.id)
      @events = @user.created_events.all
   end

   private
      def user_params
         params.expect(user: [ :username, :email, :password ])
      end
end
