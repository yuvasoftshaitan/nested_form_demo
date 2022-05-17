class CollegesController < ApplicationController
  def index
    @colleges = College.all
    @college = College.new 
    @college.students.build  
  end

  def new
    @college = College.new 
    @college.students.build  
  end

  def create

    @college = College.new(params_college)
    @college.save
    @colleges = College.all
    respond_to do |format| 
      format.js 
    end
  end

  def edit
    @college = College.find(params[:id])
  end

  def update
    @college = College.find(params[:id])
    @college.update(params_college)
    respond_to do |format|
      format.html
      format.js{response_to root_path}
    end
  end

  def destroy
    @college = College.find(params[:id])
    @college.destroy
     respond_to do |format|
      format.html
      format.js{response_to root_path}
    end
  end

  def params_college
      params.require(:college).permit(:college_name, :college_RNO, students_attributes: [:student_name, :student_RNO, :id]) 
  end
end
