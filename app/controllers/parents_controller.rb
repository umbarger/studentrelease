class StudentsController < ApplicationController

  before_action :set_family
  before_action :set_parent, only: [ :show, :edit, :update, :destroy ]

  def set_student
    @student = @family.parents.find( params[:id] )
  end

  def new
    @student = @family.parents.build
  end

  def create
    @student = @family.parents.build( student_params )
    
    if @student.save
      flash[:notice] = "Parent added."
      redirect_to [@family, @parent ]
    else
      flash[:alert] = "Parent not added."
      render "new"
    end
  end
  
  private
    def set_family
      @family = Family.find( params[ :family_id ] )
    end

    def parent_params
      params.require( :parent ).permit( :first_name )
    end
end
