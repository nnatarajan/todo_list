class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.find(params[:id])
  end

  def create
  end

  def show
  end

  def edit
  end
end
