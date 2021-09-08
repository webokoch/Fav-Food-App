class FoodsController < ApplicationController
  before_action :set_food, only: [:show]

  def index
    @foods = Food.all
  end

  def show
  end

  private
  def set_food
    @food = Food.find(params[:id])
  end
end
