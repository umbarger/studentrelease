class ReleasesController < ApplicationController
  before_action :set_release, only: [ :show, :edit, :update, :destroy ]


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
      redirect_to releases_path
    else
      flash[:alert] = "Release not added."
      render "new"
    end
  end

  private

    def set_release
      @release = Release.find( params[:id] )
    end

    # def set_people
    #   @student = Student.where( :id )
    #   @teacher = Teacher.where( :id )
    # end

    def release_params
      params.require( :release ).permit( :c_at, :student_id, :teacher_id )
    end
end
