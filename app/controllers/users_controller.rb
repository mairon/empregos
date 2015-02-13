class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def check_email
    @user = User.find_by_cpfcnpj(params[:user][:cpfcnpj])

    respond_to do |format|
     format.json { render :json => !@user }
    end
  end

  def index
    @users = User.all
  end

	def new
	  @user = User.new
	end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to users_url
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

  def show
    @empresa = Empresa.find(@user.empresa.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:cpfcnpj, :password, :tipo, :nome, :email)
    end

end
