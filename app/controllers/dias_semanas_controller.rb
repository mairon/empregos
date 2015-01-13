class DiasSemanasController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_dias_semana, only: [:show, :edit, :update, :destroy]
  respond_to :html
  
  def index
    @dias_semanas = DiasSemana.all
    respond_with(@dias_semanas)
  end

  def show
    respond_with(@dias_semana)
  end

  def new
    @dias_semana = DiasSemana.new
    respond_with(@dias_semana)
  end

  def edit
  end

  def create
    @dias_semana = DiasSemana.new(dias_semana_params)
    @dias_semana.save
    respond_with(@dias_semana)
  end

  def update
    @dias_semana.update(dias_semana_params)
    respond_with(@dias_semana)
  end

  def destroy
    @dias_semana.destroy
    respond_with(@dias_semana)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dias_semana
      @dias_semana = DiasSemana.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dias_semana_params
      params.require(:dias_semana).permit(:nome)
    end
end
