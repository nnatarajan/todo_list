class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html: "Hi, there! Ready to create a 'To Do List?' "
  end
end
