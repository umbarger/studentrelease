class Family
  include Mongoid::Document
  field :name, type: String

  validates_presence_of :name, message: 'Family has not been created!'
end
