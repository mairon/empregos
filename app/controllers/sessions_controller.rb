class SessionsController < ApplicationController
  def new
  end

	def create
    user = User.authenticate(params[:cpfcnpj], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to admin_painel_path, :notice => "Bem vindo ao seu Painel!"
    else
      flash.now.alert = "Login ou senha incorreto"
      render "new"
    end
  end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_url, :notice => "Logged out!"
	end
end
