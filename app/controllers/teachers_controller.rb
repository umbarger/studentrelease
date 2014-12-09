class TeachersController < ApplicationController
  before_action :set_teacher, only: [ :show, :edit, :update, :destroy ]

  def index
  	@teachers = Teacher.active
  end

  def new
  	@teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new( teacher_params )

    respond_to do |format|
      if @teacher.save
        format.html { redirect_to @teacher, notice: ' has been created!' }
        format.json { render :show, status: :created, location: @teacher }
      else
        format.html { render :new }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_teacher
      @teacher = Teacher.find( params[ :id ])
    end
    
    def teacher_params
      params.require( :teacher ).permit( :first_name, :last_name, :email, :classroom, :grade, :active ) 
    end
end
