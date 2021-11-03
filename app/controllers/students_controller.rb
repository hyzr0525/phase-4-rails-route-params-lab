class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def findStudent
    singleStudent = Student.find_by(id: params[:id])
    render json: singleStudent
  end

end
