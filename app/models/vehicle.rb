class Vehicle
  include Mongoid::Document

  field :year, type: Integer
  field :make, type: String
  field :model, type: String
  field :color, type: String
  field :license, type: String
  field :state, type: String
  field :qr, type: String
  field :active, type: Boolean, default: true

  embedded_in :family

  validates_presence_of :year, message: "Year can't be blank."
  validates_presence_of :make, message: "Make can't be blank."
  validates_presence_of :model, message: "Model can't be blank."

  def self.active
    where( active: true )
  end
end
