class StudentsController < ApplicationController

  before_action :set_family
  before_action :set_student, only: [ :show, :edit, :update, :destroy ]

  def set_student
    @student = @family.students.find( params[:id] )
  end

  def new
    @student = @family.students.build
  end

  def create
    @student = @family.students.build( student_params )
    
    if @student.save
      flash[:notice] = "Student has been created."
      redirect_to [@family, @student]
    else
      flash[:alert] = "Student has not been created."
      render "new"
    end
  end
  
  private
    def set_family
      @family = Family.find( params[ :family_id ] )
    end

    def student_params
      params.require( :student ).permit( :first_name, :grade )
    end
end
