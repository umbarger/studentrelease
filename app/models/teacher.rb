class Teacher < Educator
  field :classroom, type: Integer
  field :grade, type: String

  validates_presence_of :classroom, message: "Classroom number required."
  validates_presence_of :grade, message: "Grade number required."
end
