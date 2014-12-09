class StudentsController < ApplicationController

  before_action :set_family
  before_action :set_student, only: [ :show, :edit, :update, :destroy ]
  before_action :set_teacher

  def new
    @student = @family.students.build
  end

  def edit
  end

  def index
    redirect_to[@family,@student]
  end

  def show
  end

  def create
    @student = @family.students.build( student_params )
    
    if @student.save
      flash[:notice] = "Student added."
      redirect_to [@family, @student]
    else
      flash[:alert] = "Student not added."
      render "new"
    end
  end
  
  def destroy
    @student.update_attribute( :active, false )
    respond_to do |format|
      format.html { redirect_to family_path( @family ), notice: 'Student was deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_family
      @family = Family.find( params[ :family_id ] )
    end

    def set_student
      @student = @family.students.find( params[:id] )
    end

    def set_teacher
      @teacher = @student.teacher    
    end

    def student_params
      params.require( :student ).permit( :first_name, :last_name, :teacher_id, :active )
    end
end
