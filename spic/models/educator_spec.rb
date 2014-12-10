require 'rails_helper'

describe Educator do

  it "needs a last name, and email address to save" do
    educator = Educator.new( first_name: "Tina" )
    educator.save
    expect( educator ).to_not be_valid

    educator.last_name = "Gold"
    educator.save
    expect( educator ).to_not be_valid

    educator.email = "gold@example.edu"
    educator.save
    expect( educator ).to be_valid
  end
end

