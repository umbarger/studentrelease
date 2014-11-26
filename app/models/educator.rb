class Educator
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :active, type: Boolean, default: true

  validates_presence_of :first_name, :last_name,  message: "Name can't be blank."
  validates_presence_of :email, message: "Email can't be blank."

  def self.active
    where( active: true )
  end
end
