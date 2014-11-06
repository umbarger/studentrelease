class Pickup
  include Mongoid::Document
  field :date, type: Date
  field :time, type: Time
  field :student, type: Moped::BSON::ObjectId
  field :car, type: Moped::BSON::ObjectId

  belongs_to :group

  accepts_nested_attributes_for :group

  validates_presence_of :student
  validates_presence_of :car
end
