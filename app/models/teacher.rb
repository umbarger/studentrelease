class Teacher < Educator
  field :classroom, type: Integer
  field :grade, type: String

  has_many :students, autosave: true

  accepts_nested_attributes_for :students

  validates_presence_of :classroom, message: " number required."
  validates_presence_of :grade, message: " number required."
end
