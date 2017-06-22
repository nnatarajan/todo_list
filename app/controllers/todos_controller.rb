class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    new_params = params.require(:todo).permit(:name)
    @todo = Todo.new(new_params)
      if @todo.save
        redirect_to @todo
      else
        render 'new'
      end
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
    @todo = Todo.find(params[:id])
  end
end
