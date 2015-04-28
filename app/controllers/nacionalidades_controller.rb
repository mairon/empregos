class NacionalidadesController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_nacionalidade, only: [:show, :edit, :update, :destroy]

  def index
    @nacionalidades = Nacionalidade.order('nome')
  end

  def show
  end

  def visualizacao
  end

  def new
    @nacionalidade = Nacionalidade.new
  end

  def edit
  end

  def create
    @nacionalidade = Nacionalidade.new(nacionalidade_params)

    if @nacionalidade.save
      redirect_to nacionalidades_url
    else
      render :new
    end
  end

  def update
    if @nacionalidade.update(nacionalidade_params)
      redirect_to nacionalidades_url
    else
      render :edit
    end
  end

  def destroy
    @nacionalidade.destroy
      redirect_to nacionalidades_url
  end

  private
    def set_nacionalidade
      @nacionalidade = Nacionalidade.find(params[:id])
    end

    def nacionalidade_params
      params.require(:nacionalidade).permit(:nome)
    end
end
