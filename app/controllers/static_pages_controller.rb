class StaticPagesController < ApplicationController
  def home
    redirect_to @todos = Todo.all
  end

  def help
  end

end
