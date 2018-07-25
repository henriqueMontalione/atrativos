class AtractivesController < ApplicationController
  before_action :set_atractive, only: [:show, :edit, :update, :destroy]
  before_action :authorize_atractive, only: [:show, :edit, :update, :destroy]

  def index
    @atractives = Atractive.all
  end

  def show
  end

  def new
    @atractive = Atractive.new
  end

  def edit
  end

  def create
    @atractive = Atractive.new(atractive_params)

    if @atractive.save
      redirect_to @atractive, notice: 'Atractive was successfully created.'
    else
      render :new
    end
  end

  def update
    if @atractive.update(atractive_params)
      redirect_to @atractive, notice: 'Atractive was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @atractive.destroy
      redirect_to atractives_path, notice: 'Atractive was successfully destroyed.'
  end

  private

  def authorize_atractive
    authorize @atractive
  end

  def set_atractive
    @atractive = Atractive.find(params[:id])
  end

  def atractive_params
    params.require(:atractive).permit(:name, :address, :duration_time, :max_capacity, :ticket_price).merge(user_id: current_user.id)
  end
end
