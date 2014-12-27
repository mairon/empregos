class NacionalidadesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_nacionalidade, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @nacionalidades = Nacionalidade.all
    respond_with(@nacionalidades)
  end

  def show
    respond_with(@nacionalidade)
  end

  def new
    @nacionalidade = Nacionalidade.new
    respond_with(@nacionalidade)
  end

  def edit
  end

  def create
    @nacionalidade = Nacionalidade.new(nacionalidade_params)
    @nacionalidade.save
    respond_with(@nacionalidade)
  end

  def update
    @nacionalidade.update(nacionalidade_params)
    respond_with(@nacionalidade)
  end

  def destroy
    @nacionalidade.destroy
    respond_with(@nacionalidade)
  end

  private
    def set_nacionalidade
      @nacionalidade = Nacionalidade.find(params[:id])
    end

    def nacionalidade_params
      params.require(:nacionalidade).permit(:nome)
    end
end
