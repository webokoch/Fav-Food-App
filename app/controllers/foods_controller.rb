class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  def index
    @foods = policy_scope(Food)
  end

  def show
  end

  def my_fav_foods
    @foods = Food.where(user_id: current_user)
    authorize @foods
  end

  def new
    @food = Food.new
    authorize @food
  end

  def create
    @food = Food.new(food_params)
    authorize @food
    if @food.save
      redirect_to food_path(@food)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @food.update(food_params)
      redirect_to food_path(@food)
    else
      render :edit
    end
  end

  def destroy
    @food.destroy
    redirect_to root_path
  end

  private

  def set_food
    @food = Food.find(params[:id])
    authorize @food
  end

  def food_params
    params.require(:food).permit(:name, :cuisine, :description, :photo)
  end
end
