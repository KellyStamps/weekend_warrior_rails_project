class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
  end

  def create
    @dog = Dog.create(name: params[:name], age: params[:age], breed: params[:breed], motto: params[:motto])
    redirect_to dog_path(@dog)
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(name: params[:name], age: params[:age], breed: params[:breed], motto: params[:motto])
    redirect_to dog_path(@dog)
  end

  def show
    @dog = Dog.find(params[:id])
  end



end
