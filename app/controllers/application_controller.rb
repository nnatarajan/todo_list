class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def welcome
    render html: "Welcome! Ready to create a To Do List?"
  end
end
