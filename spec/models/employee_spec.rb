require 'rails_helper'

describe Employee do
  describe "passwords" do
    it "needs a password and confirmation to save" do 
      u = Employee.new( name: "steve" )

      u.save
      expect( u ).to_not be_valid

      u.password = "password"
      u.password_confirmation = ""
      u.save
      expect( u ).to_not be_valid

      u.password_confirmation = "password"
      u.save
      expect( u ).to be_valid
    end

    it "needs password and confirmation to match" do
      u = Empoyee.create( name: "steve", password: "hunter2", password_confirmation: "hunter")
      expect( u ).to_not be_valid
    end
  end

  describe "authentication" do
    let( :employee ) { Employee.create( name: "steve", password: "hunter2", password_confirmation: "hunter2" ) }

    it "authenticates with a correct password" do
      expect( employee.authenticate( "hunter2" )).to be
    end

    it "does not authenticate with an incorrect password" do
      expect( employee.authenticate( "hunter1" )).to_not be
    end
  end
end
