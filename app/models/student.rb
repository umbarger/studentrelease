class Student
  include Mongoid::Document
  field :first_name, type: String
  field :grade, type: Integer
  field :active, type: Boolean, default: true

  embedded_in :family

  validates_presence_of :first_name, message: "Name can't be blank."
  validates_presence_of :grade, message: "Grade cannot be blank."
  validates_numericality_of :grade, greater_than_or_equal_to: 0, less_than: 13, only_integer: true

  def self.active
    where( active: true )
  end
end
