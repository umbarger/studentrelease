class Student
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :grade, type: Integer
  field :teacher, type: String

  embedded_in :family
end
