class ReleasesController < ApplicationController
  before_action :set_release, only: [ :show, :edit, :update, :destroy ]
  before_action :set_parents

  def new
    @release = Release.new
  end

  def edit
  end

  def index
  	@releases = Release.all
  end

  def create
    @release = Release.new( release_params )
    
    if @release.save
      flash[:notice] = "Release added."
      redirect_to releases_path
    else
      flash[:alert] = "Release not added."
      render "new"
    end
  end

  private
    def set_parents
      @student = Student.where( id: :student_id )
      @teacher = Teacher.where( id: :teacher_id )
    end

    def set_release
      @release = Release.find( params[:id] )
    end

    def release_params
      params.require( :release ).permit( :c_at, :student_id, :teacher_id )
    end
end
