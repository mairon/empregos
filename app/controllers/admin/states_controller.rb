class Admin::StatesController < ApplicationController
  before_action :authenticate_user!  

  before_action :set_state, only: [:show, :edit, :update, :destroy]
  def index
    @states = State.select('id,acronym,name')
  end

  def show
    @state = State.find(params[:id])
  end

  # GET /states/new
  # GET /states/new.json
  def new
    @state = State.new
  end

  # GET /states/1/edit
  def edit
    @state = State.find(params[:id])
  end

  # POST /states
  # POST /states.json
  def create
    @state = State.new(state_params)

    if @state.save
      redirect_to admin_states_url
    else
      render action: "new"
    end
  end

  # PUT /states/1
  def update
    if @state.update(state_params)
      redirect_to admin_states_url
    else
      render :edit
    end
  end

  # DELETE /states/1
  def destroy
    @state.destroy
    redirect_to admin_states_url
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_params
      params.require(:state).permit(:acronym, :name)
    end
end
