class FoodsController < ApplicationController
  before_action :set_food, only: [:show]

  def index
    @foods = Food.all
  end

  def show
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to food_path(@food)
    else
      render :new
    end

  end

  private
  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :cuisine, :description,)
  end
end
