class CandidatoIdiomasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_candidato_idioma, only: [:show, :edit, :update, :destroy]

  def index
    @candidato_idiomas = CandidatoIdioma.all
    respond_with(@candidato_idiomas)
  end

  def show
    respond_with(@candidato_idioma)
  end

  def new
    @candidato_idioma = CandidatoIdioma.new
    respond_with(@candidato_idioma)
  end

  def edit
  end

  def create
    @candidato_idioma = CandidatoIdioma.new(candidato_idioma_params)
    @candidato_idioma.save
    redirect_to  candidato_url(@candidato_idioma.candidato_id)
  end

  def update
    @candidato_idioma.update(candidato_idioma_params)
    redirect_to  candidato_url(@candidato_idioma.candidato_id)
  end

  def destroy
    @candidato_idioma.destroy
    redirect_to  candidato_url(@candidato_idioma.candidato_id)
  end

  private
    def set_candidato_idioma
      @candidato_idioma = CandidatoIdioma.find(params[:id])
    end

    def candidato_idioma_params
      params.require(:candidato_idioma).permit(:candidato_id, :idioma_id, :estado)
    end
end
