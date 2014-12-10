class Student
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :active, type: Boolean, default: true

  embedded_in :family
  belongs_to :teacher, autosave: true

  validates_presence_of :first_name, message: " can't be blank."
  validates_presence_of :last_name, message: " can't be blank."
  validates_presence_of :teacher, message: " must have teacher."

  def self.active
    where( active: true )
  end
end