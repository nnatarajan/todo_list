class TodosController < ApplicationController
before_action :set_todo, only: [:show, :edit, :update, :destroy]
  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def edit
  end

  def create
    @todo = Todo.new(new_params)
      if @todo.save
        redirect_to @todo
      else
        render :new  #'new'
      end
  end

    def update
    if @todo.update(new_params)
      redirect_to @todo
    else
      render :edit
    end
  end

  def destroy
    @todo.destroy
    redirect_to @todo
  end

  private
    def set_todo
      @todo = Todo.find(params[:id])
    end

    def new_params
      params.require(:todo).permit(:name)
    end
end
