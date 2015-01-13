class ConveniosController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_convenio, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @convenios = Convenio.all
    respond_with(@convenios)
  end

  def show
    respond_with(@convenio)
  end

  def new
    @convenio = Convenio.new
    respond_with(@convenio)
  end

  def edit
  end

  def create
    @convenio = Convenio.new(convenio_params)
    @convenio.save
    respond_with(@convenio)
  end

  def update
    @convenio.update(convenio_params)
    respond_with(@convenio)
  end

  def destroy
    @convenio.destroy
    respond_with(@convenio)
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
