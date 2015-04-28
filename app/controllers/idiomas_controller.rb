class IdiomasController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_idioma, only: [:show, :edit, :update, :destroy]

  def index
    @idiomas = Idioma.order('id desc')
  end

  def show
  end

  def visualizacao
  end

  def new
    @idioma = Idioma.new
  end

  def edit
  end

  def create
    @idioma = Idioma.new(idioma_params)

    if @idioma.save
      redirect_to idiomas_url
    else
      render :new
    end
  end

  def update
    if @idioma.update(idioma_params)
      redirect_to idiomas_url
    else
      render :edit
    end
  end

  def destroy
    @idioma.destroy
      redirect_to idiomas_url
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idioma
      @idioma = Idioma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idioma_params
      params.require(:idioma).permit(:nome, :status)
    end
end
