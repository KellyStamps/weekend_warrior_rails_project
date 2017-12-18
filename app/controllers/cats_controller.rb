class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def new
  end

  def create
    @cat = Cat.create(name: params[:name], age: params[:age], color: params[:color], motto: params[:motto])
    redirect_to cat_path(@cat)
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.update(name: params[:name], age: params[:age], color: params[:color], motto: params[:motto])
    redirect_to cat_path(@cat)
  end
end
