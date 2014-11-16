class Family
  include Mongoid::Document
  field :name, type: String
  
  embeds_many :students

  validates_presence_of :name, message: 'Family has not been created!'
end
