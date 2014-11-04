class Car
  include Mongoid::Document
  field :make, type: String
  field :model, type: String
  field :year, type: Integer
  field :color, type: String
  field :license_plate, type: String
  field :license_state, type: String
  embedded_in :family
end
