class Parent < User
  include Mongoid::Document
  
  field :first_name, type: String

  embedded_in :family

  validates_presence_of :first_name, message: "Name can't be blank."

  def self.active
    where( active: true )
  end
end
