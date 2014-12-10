class Parent
  include Mongoid::Document
  
  field :first_name, type: String
  field :last_name, type: String
  field :active, type: Boolean, default: true

  embedded_in :family

  validates_presence_of :first_name, message: " can't be blank."
  validates_presence_of :last_name, message: " can't be blank."

  def self.active
    where( active: true )
  end
end