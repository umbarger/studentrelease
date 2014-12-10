class Driver
  include Mongoid::Document

  field :name, type: String
  field :active, type: Boolean

  embedded_in :family

  def self.active
    where( active: true )
  end
end