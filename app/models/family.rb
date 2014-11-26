class Family
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :active, type: Boolean, default: true
 
  embeds_many :students
  embeds_many :parents
  embeds_many :vehicles

  validates_presence_of :name, message: 'Family has not been created!'
  def self.active
    where( active: true )
  end
end
