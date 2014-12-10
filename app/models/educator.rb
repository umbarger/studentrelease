class Educator < User
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :active, type: Boolean, default: true

  has_many :releases, autosave: true

  accepts_nested_attributes_for :releases

  validates_presence_of :first_name, :last_name,  message: " can't be blank."
  validates_presence_of :email, message: " can't be blank."

  def self.active
    where( active: true )
  end
  
end