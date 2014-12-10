class Driver
  include Mongoid::Document

  field :first_name, type: String
  field :last_name, type: String
  field :comment, type: String
  
  field :active, type: Boolean

  embedded_in :family

  def self.active
    where( active: true )
  end
end