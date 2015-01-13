class IdiomasController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_idioma, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @idiomas = Idioma.all
    respond_with(@idiomas)
  end

  def show
    respond_with(@idioma)
  end

  def new
    @idioma = Idioma.new
    respond_with(@idioma)
  end

  def edit
  end

  def create
    @idioma = Idioma.new(idioma_params)
    @idioma.save
    respond_with(@idioma)
  end

  def update
    @idioma.update(idioma_params)
    respond_with(@idioma)
  end

  def destroy
    @idioma.destroy
    respond_with(@idioma)
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
