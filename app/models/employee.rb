class Employee
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :password_digest, type: String
  field :has_secure_password, type: Boolean
end
