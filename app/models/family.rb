class Family
  include Mongoid::Document

  field :name, type: String
  field :email, type: String
  field :active, type: Boolean, default: true
  field :qrcode, type: Integer

  index({ name: 1 })
  index({ email: 1 })
  index({ name: 1, email: 1 }, { unique: true, name: "family_index", background: true })


  embeds_many :parents
  embeds_many :vehicles
  embeds_many :drivers

  has_many :students
  has_many :releases

  validates_presence_of :name, message: 'Family has not been created!'
  validates_presence_of :email, message: 'Family has not been created!'

  def self.active
    where( active: true )
  end
end