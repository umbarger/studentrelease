class ParentsController < ApplicationController

  before_action :set_family
  before_action :set_parent, only: [ :show, :edit, :update, :destroy ]

  def new
    @parent = @family.parents.build
  end

  def edit
  end

  def create
    @parent = @family.parents.build( parent_params )
    
    if @parent.save
      flash[:notice] = "Parent added."
      redirect_to [@family, @parent ]
    else
      flash[:alert] = "Parent not added."
      render "new"
    end
  end

  def destroy
    @parent.update_attribute( :active, false )
    respond_to do |format|
      format.html { redirect_to family_path( @family ), notice: 'Parent was deleted.' }
      format.json { head :no_content }
    end
  end
  
  private
    def set_family
      @family = Family.find( params[ :family_id ] )
    end

  def set_parent
    @parent = @family.parents.find( params[:id] )
  end

    def parent_params
      params.require( :parent ).permit( :first_name, :last_name, :active )
    end
end
