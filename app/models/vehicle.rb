class Vehicle
  include Mongoid::Document
  field :year, type: Integer
  field :make, type: String
  field :model, type: String
  field :color, type: String
  field :license, type: String
  field :state, type: String
  field :qr_num, type: Integer

  embedded_in :family

  validates_presence_of :year, message: "Year can't be blank."
  validates_presence_of :make, message: "Make can't be blank."
  validates_presence_of :model, message: "Model can't be blank."
  validates_uniqueness_of :qr_num
  validates_numericality_of :qr_num, only_integer: true
end
