class ConveniosEmpresaPerfilsController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_convenios_empresa_perfil, only: [:show, :edit, :update, :destroy]

  respond_to :html
  
  def index
    @convenios_empresa_perfils_empresa_perfils = ConveniosEmpresaPerfil.all
    respond_with(@convenios_empresa_perfils_empresa_perfils)
  end

  def show
    respond_with(@convenios_empresa_perfil)
  end

  def new
    @convenios_empresa_perfil = ConveniosEmpresaPerfil.new
    respond_with(@convenios_empresa_perfil)
  end

  def edit
  end

  def create
    @convenios_empresa_perfil = ConveniosEmpresaPerfil.new(convenios_empresa_perfil_params)
    @convenios_empresa_perfil.save
    respond_with(@convenios_empresa_perfil)
  end

  def update
    @convenios_empresa_perfil.update(convenios_empresa_perfil_params)
    respond_with(@convenios_empresa_perfil)
  end

  def destroy
    @convenios_empresa_perfil.destroy
    respond_with(@convenios_empresa_perfil)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convenios_empresa_perfil
      @convenios_empresa_perfils_empresa_perfil = ConveniosEmpresaPerfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def convenios_empresa_perfil_params
      params.require(:convenios_empresa_perfil).permit(:empresa_perfil_id, :convenio_id)
    end
end
