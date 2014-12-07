class Qrcode
  include Mongoid::Document
  
  field :qr_id, type: String
  field :active, type: Boolean, default: true
  
  embedded_in :family

  validates_uniqueness_of :qr_id, message: "ID already in use, please select another."
  def self.active
    where( active: true )
  end
end
