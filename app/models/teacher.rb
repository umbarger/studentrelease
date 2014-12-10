class Teacher 
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :classroom, type: Integer
  field :grade, type: String
    field :active, type: Boolean, default: true

  has_many :students
  has_many :releases

  validates_presence_of :first_name, :last_name,  message: " can't be blank."
  validates_presence_of :email, message: " can't be blank."
  validates_presence_of :classroom, message: " number required."
  validates_presence_of :grade, message: " number required."

  def self.active
    where( active: true )
  end
end