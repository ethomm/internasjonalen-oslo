class UsersController < ApplicationController  
  before_action :authenticate_user
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  layout 'admin'
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Brukeren '+ @user.name + ' er blitt opprettet'
      redirect_to users_path
    else
      render :new 
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      flash[:notice] = @user.name+' Er blitt oppdatert'
      redirect_to users_path
    else
      render :edit
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    redirect_to users_url, notice: @user.name+' Er blitt slettet'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :admin, :password, :password_confirmation)
    end
end
