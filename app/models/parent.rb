class Parent
  include Mongoid::Document
  field :first_name, type: String
  field :active, type: Boolean

  embedded_in :family

  validates_presence_of :first_name, message: "Name can't be blank."

  def self.active
    where( active: true )
  end
end
