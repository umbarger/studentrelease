class Group
  include Mongoid::Document
  
  field :id, type: Integer
  field :created, type: Time
  field :released, type: Time

  has_many :pickups 

  validates presence of :id
end
