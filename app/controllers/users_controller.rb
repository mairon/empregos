class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]
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

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
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
      params.require(:user).permit(:cpfcnpj, :password, :tipo)
    end

end
