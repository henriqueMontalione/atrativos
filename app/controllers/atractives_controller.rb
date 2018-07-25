class AtractivesController < ApplicationController
  before_action :set_atractive, only: [:show, :edit, :update, :destroy]
  before_action :allow_without_password, only: [:update]

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

  def set_atractive
    @atractive = Atractive.find(params[:id])
  end

  def atractive_params
    params.require(:atractive).permit(:name, :address, :duration_time, :max_capacity, :ticket_price).merge(user_id: current_user.id)
  end

  def allow_without_password
    if params[:atractive][:password].blank? && params[:atractive][:password_confirmation].blank?
        params[:atractive].delete(:password)
        params[:atractive].delete(:password_confirmation)
    end
  end
end
