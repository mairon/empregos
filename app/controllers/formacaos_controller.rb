class FormacaosController < ApplicationController
  before_action :set_formacao, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @formacaos = Formacao.all
    respond_with(@formacaos)
  end

  def show
    respond_with(@formacao)
  end

  def new
    @formacao = Formacao.new
    respond_with(@formacao)
  end

  def edit
  end

  def create
    @formacao = Formacao.new(formacao_params)
    @formacao.save
    respond_with(@formacao)
  end

  def update
    @formacao.update(formacao_params)
    respond_with(@formacao)
  end

  def destroy
    @formacao.destroy
    respond_with(@formacao)
  end

  private
    def set_formacao
      @formacao = Formacao.find(params[:id])
    end

    def formacao_params
      params.require(:formacao).permit(:descricao)
    end
end
