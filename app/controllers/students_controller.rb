class StudentsController < ApplicationController

  def index
    if name = params[:name]
      students = Student.where(first_name: name.capitalize).or(Student.where(last_name: name.capitalize))
      render json: students

    
    else  
    students = Student.all
    render json: students

    end
   
    
  
  
     
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
