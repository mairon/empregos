class CursosController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_curso, only: [:show, :edit, :update, :destroy]

  def index
    @cursos = Curso.order('id desc')
  end

  def show
  end

  def visualizacao
  end

  def new
    @curso = Curso.new
  end

  def edit
  end

  def create
    @curso = Curso.new(curso_params)

    if @curso.save
      redirect_to cursos_url
    else
      render :new
    end
  end

  def update
    if @curso.update(curso_params)
      redirect_to cursos_url
    else
      render :edit
    end
  end

  def destroy
    @curso.destroy
      redirect_to cursos_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curso
      @curso = Curso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curso_params
      params.require(:curso).permit(:nome, :status)
    end
end
