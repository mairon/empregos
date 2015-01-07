class CandidatosTurnosController < ApplicationController
  before_action :set_candidatos_turno, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @candidatos_turnos = CandidatosTurno.all
    respond_with(@candidatos_turnos)
  end

  def show
    respond_with(@candidatos_turno)
  end

  def new
    @candidatos_turno = CandidatosTurno.new
    respond_with(@candidatos_turno)
  end

  def edit
  end

  def create
    @candidatos_turno = CandidatosTurno.new(candidatos_turno_params)
    @candidatos_turno.save
    respond_with(@candidatos_turno)
  end

  def update
    @candidatos_turno.update(candidatos_turno_params)
    respond_with(@candidatos_turno)
  end

  def destroy
    @candidatos_turno.destroy
    respond_with(@candidatos_turno)
  end

  private
    def set_candidatos_turno
      @candidatos_turno = CandidatosTurno.find(params[:id])
    end

    def candidatos_turno_params
      params.require(:candidatos_turno).permit(:candidato_id, :turno_id)
    end
end
