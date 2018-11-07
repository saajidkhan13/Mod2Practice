class WrestlersController < ApplicationController
  before_action :find_wrestler, only: [:show, :edit, :update, :destroy]

  def index
    @wrestlers = Wrestler.all
  end

  def show

  end

  def new
    @wrestler = Wrestler.new
  end

  def create
    @wrestler = Wrestler.create(wrestler_params)
    if @wrestler.valid?
      redirect_to @wrestler
    else
      flash[:errors] = @wrestler.errors.full_messages
      redirect_to new_wrestler_path
    end
  end

  def edit
    #code
  end

  def update
    @wrestler.update(wrestler_params)
    redirect_to @wrestler
  end

  def destroy
    @wrestler.destroy
    redirect_to wrestlers_path
  end





  private

  def find_wrestler
    @wrestler = Wrestler.find_by(id: params[:id])
  end

  def wrestler_params
    params.require(:wrestler).permit(:name, :weight, :champion, :brand_id)
  end




  end #end of wrestler Controller
