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

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    if @food.update_attributes(food_params)
      flash[:success] = "Food updated"
      render 'show'
    else
      render 'edit'
    end
  end

  def create
    @food = Food.new(food_params)
    if @food.save
    	flash[:success] = "Adding successful"
    	redirect_to @food
      # Handle a successful save.
    else
      render 'new'
    end
  end

    def destroy
    Food.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to '/foods'
  end

  private 

  def food_params
      params.require(:food).permit(:name, :price, :url)
    end


end
