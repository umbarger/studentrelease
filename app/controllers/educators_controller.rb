class EducatorsController < ApplicationController
  before_action :set_educator, only: [:show, :edit, :update, :destroy]

  def index 
    @educators = Educator.active
  end

  def show
  end

  def new
    @educator = Educator.new
  end

  def edit
  end

  def create
    @educator = Educator.new( educator_params )
    
    respond_to do |format|
      if @educator.save
        format.html { redirect_to @educator, notice: ' has been created!' }
        format.json { render :show, status: :created, location: @educator }
      else
        format.html { render :new }
        format.json { render json: @educator.errors, status: :unprocessable_entity }
      end
    end
  end 

  def update
    respond_to do |format|
      if @educator.update( family_params )
        format.html { redirect_to @educator, notice: ' has been updated.' }
        format.json { render :show, status: :ok, location: @educator }
      else
        format.html { render :edit }
        format.json { render json: @educator.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @educator.update_attribute( :active, false )
    
    respond_to do |format|
      format.html { redirect_to educators_url, notice: ' was deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_educator
      @educator = Educator.find( params[ :id ])
    end

    def educator_params
      params.require( :educator ).permit( :first_name, :last_name, :email, :active )
    end

end
