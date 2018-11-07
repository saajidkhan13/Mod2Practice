class BrandsController < ApplicationController
  before_action :find_brand, only: [:show, :edit, :update, :destroy]

  def index
    @brands = Brand.all
  end

  def show

  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.create(brand_params)
    if @brand.valid?
      redirect_to @brand
    else
      flash[:errors] = @brand.errors.full_messages
      redirect_to new_brand_path
    end
  end

  def edit
    #code
  end

  def update
    @brand.update(brand_params)
    redirect_to @brand
  end

  def destroy
    @brand.destroy
    redirect_to brands_path
  end





  private

  def brand_params
    params.require(:brand).permit(:name, :roster)
  end

  def find_brand
    @brand = Brand.find_by(id: params[:id])
  end


end #end of Brand Controller
