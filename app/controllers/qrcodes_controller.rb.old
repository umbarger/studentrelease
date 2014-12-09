class QrcodesController < Application Controller

  require 'qrencoder'

  before_action :set_family
  before_action :set_qrcode, only: [ :show, :destroy ]

  def new
    @qrcode = @family.qrcodes.build
  end

  def index
    redirect_to[@family,@qrcode]
  end
 
  def show
  end
 
  def create
    @qrcode = @family.qrcodes.build( qrcode_params ) 
    
    if @qrcode.save
      flash[:notice] = "QR Code added."
      redirect_to [@family, @student]
    else
      flash[:alert] = "QR Code not added"
      render "new"
    end
  end

  def destroy
    @qrcode.update_attribute( :active, false )
    redirect_to family_path( @family ), notice: "QR Code was deleted." 
  end

  private
    def set_family
      @family = Family.find( params[ :family_id ] )
    end 

    def set_qrcode
      @qrcode = @family.qrcodes.find( params[:id] )
    end

    def qrcode_params
      params.require( :student ).permit( :path )
    end

end
