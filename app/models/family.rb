class Family
  include Mongoid::Document
  field :name, type: String
  field :active, type: Mongoid::Boolean
  embeds_many :students
  embeds_many :parents
  embeds_many :cars
end
