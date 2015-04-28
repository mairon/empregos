class ConveniosController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_convenio, only: [:show, :edit, :update, :destroy]

  def index
    @convenios = Convenio.order('nome')
  end

  def show
  end

  def visualizacao
  end

  def new
    @convenio = Convenio.new
  end

  def edit
  end

  def create
    @convenio = Convenio.new(convenio_params)

    if @convenio.save
      redirect_to convenios_url
    else
      render :new
    end
  end

  def update
    if @convenio.update(convenio_params)
      redirect_to convenios_url
    else
      render :edit
    end
  end

  def destroy
    @convenio.destroy
      redirect_to convenios_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convenio
      @convenio = Convenio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def convenio_params
      params.require(:convenio).permit(:nome, :status)
    end
end
