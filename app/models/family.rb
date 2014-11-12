class Family
  include Mongoid::Document
  field :name, type: String
  field :active, type: Boolean
  
  def self.active
    where( active: true )
  end
end
