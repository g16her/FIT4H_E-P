class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def set_employee
      @employee = Employee.find(params[:id])
    end # zählt für alle Controller damit er mit der Varriablen arbeiten kann
end
