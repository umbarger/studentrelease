class VehiclesController < ApplicationController

  before_action :set_family
  before_action :set_vehicle, only: [ :show, :edit, :update, :destroy ]

  def set_vehicle
    @vehicle = @family.vehicles.find( params[:id] )
  end

  def new
    @vehicle = @family.vehicles.build
  end

  def create
    @vehicle = @family.vehicles.build( vehicle_params )
    
    if @vehicle.save
      flash[:notice] = "Vehicle added."
      redirect_to [@family, @vehicle]
    else
      flash[:alert] = "Vehicle not added."
      render "new"
    end
  end
  
  private
    def set_family
      @family = Family.find( params[ :family_id ] )
    end

    def vehicle_params
      params.require( :vehicle ).permit( :year, :make, :model, :color, :license, :state, :qr_num )
    end
end
