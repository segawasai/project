class StaticPagesController < ApplicationController
  def home
  	@foods = Food.all
  end

  def about
  end

  def help
  end

end
