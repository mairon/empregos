class TipoVagasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tipo_vaga, only: [:show, :edit, :update, :destroy]
  respond_to :html
  
  def index
    @tipo_vagas = TipoVaga.all
    respond_with(@tipo_vagas)
  end

  def show
    respond_with(@tipo_vaga)
  end

  def new
    @tipo_vaga = TipoVaga.new
    respond_with(@tipo_vaga)
  end

  def edit
  end

  def create
    @tipo_vaga = TipoVaga.new(tipo_vaga_params)
    @tipo_vaga.save
    respond_with(@tipo_vaga)
  end

  def update
    @tipo_vaga.update(tipo_vaga_params)
    respond_with(@tipo_vaga)
  end

  def destroy
    @tipo_vaga.destroy
    respond_with(@tipo_vaga)
  end

  private
    def set_tipo_vaga
      @tipo_vaga = TipoVaga.find(params[:id])
    end

    def tipo_vaga_params
      params.require(:tipo_vaga).permit(:nome)
    end
end
