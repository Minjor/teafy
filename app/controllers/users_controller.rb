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


    def update
      @user = User.find(params[:id])
      if @user.update_attributes(params[:user])
        if @user.admin?
          @user.admin = false
        else
          @user.admin = true
        end
      end
    end


    def destroy
      @user = User.find(params[:id])

    if @user.destroy
        redirect_to admin_dashboard_path, notice: "User deleted."
      end
    end

    def admin_dashboard
      @users = User.all
      if params[:search]
          @users = User.search(params[:search]).order("created_at DESC")
      else
          @users = User.all.order("created_at DESC")
      end

    end

# POST /users/change_role
    def change_role
      @user = User.find(params[:id])
      if @user.admin?
        User.find(params[:id]).admin = false
      else
        User.find(params[:id]).admin = true
      end
      redirect_to root_url, notice: "Role changed."
    end

    def your_library
      @user = current_user
      @songs = @user.songs
      @artists = @user.artists
      @albums = @user.albums
      @playlists = @user.playlists

    end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
        @user = User.find(params[:id])
    end
end
