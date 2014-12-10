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
    @release = Release.build( student_params )
    
    if @release.save
      flash[:notice] = "Release added."
      redirect_to releases_path
    else
      flash[:alert] = "Release not added."
      render "new"
    end
  end

    def set_release
      @release = Release.find( params[:id] )
    end

    def release_params
      params.require( :release ).permit( )
    end
end

end
