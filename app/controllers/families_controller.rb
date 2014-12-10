class FamiliesController < ApplicationController
  before_action :set_family, only: [:show, :edit, :update, :destroy]

  # GET /families
  # GET /families.json
  def index
    @families = Family.active
  end

  # GET /families/1
  # GET /families/1.json
  def show
  end

  # GET /families/new
  def new
    @family = Family.new
  end

  # GET /families/1/edit
  def edit
  end

  # POST /families
  # POST /families.json
  def create
    @family = Family.new( family_params )

    if @family.qrcode == 0 
      code = Family.count + 1
      @family.update_attribute( :qrcode, code )
    end

    respond_to do |format|
      if @family.save
        format.html { redirect_to @family, notice: 'Family has been created!' }
        format.json { render :show, status: :created, location: @family }
      else
        format.html { render :new }
        format.json { render json: @family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /families/1
  # PATCH/PUT /families/1.json
  def update
    respond_to do |format|
      if @family.update( family_params )
        format.html { redirect_to @family, notice: 'Family has been updated.' }
        format.json { render :show, status: :ok, location: @family }
      else
        format.html { render :edit }
        format.json { render json: @family.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /families/1
  # DELETE /families/1.json
  def destroy
    @family.update_attribute( :active, false )
    respond_to do |format|
      format.html { redirect_to families_url, notice: 'Family was deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_family
      @family = Family.find( params[ :id ])
    end
    
    def family_params
      params.require( :family ).permit( :name, :email ) 
    end
end
