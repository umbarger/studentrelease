class DriversController < ApplicationController

  before_action :set_family
  before_action :set_driver, only: [ :show, :edit, :update, :destroy ]

  def set_student
    @student = @family.drivers.find( params[:id] )
  end

  def new
    @student = @family.drivers.build
  end

  def edit
  end

  def index
    redirect_to[@family,@driver]
  end

  def show
  end

  def create
    @driver = @family.drivers.build( student_params )
    
    if @driver.save
      flash[:notice] = "Authorized person added."
      redirect_to [@family, @driver]
    else
      flash[:alert] = "Authorized person not added."
      render "new"
    end
  end
  
  def destroy
    @driver.update_attribute( :active, false )
    respond_to do |format|
      format.html { redirect_to family_path( @family ), notice: 'Authorized person was deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_family
      @family = Family.find( params[ :family_id ] )
    end

    def set_driver
      @driver = @family.drivers.active.find( params[:id] )
    end

    def driver_params
      params.require( :driver ).permit( :first_name, :last_name, :comments )
    end
end
