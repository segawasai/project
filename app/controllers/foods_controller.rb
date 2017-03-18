class FoodsController < ApplicationController

  def new
    @food = Food.new
  end

  def show
  	@food = Food.find(params[:id])
  end

  def index
    @foods = Food.all
  end

end
