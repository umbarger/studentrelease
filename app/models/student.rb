class Student
  include Mongoid::Document
  field :first_name, type: String
  field :grade, type: Integer

  embedded_in :family

  validates_numericality_of :grade, greater_than_or_equal_to: 0, less_than: 13, only_integer: true
end
