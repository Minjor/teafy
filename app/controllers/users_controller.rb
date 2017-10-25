class UsersController < ApplicationController
#before_filter :authenticate_user!
before_action :set_user, only: [:show] # , :edit, :update, :destroy]
    def index
        @users = User.all
        if params[:search]
            @users = User.search(params[:search]).order("created_at DESC")
        else
            @users = User.all.order("created_at DESC")
        end
    end

    def show
        respond_to do |format|
            format.html # show.html.erb
            format.xml { render :xml => @user }
    end
    end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
        @user = User.find(params[:id])
    end
end
