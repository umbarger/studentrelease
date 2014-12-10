require 'rails_helper'

describe Teacher do

  it "needs a last name, and email address to save" do
    teacher = Teacher.new( first_name: "Tina" )
    teacher.save
    expect( teacher ).to_not be_valid

    teacher.last_name = "Gold"
    teacher.save
    expect( teacher ).to_not be_valid

    teacher.email = "gold@example.edu"
    teacher.save
    expect( teacher ).to_not be_valid

    teacher.classroom = "101"
    teacher.save
    expect( teacher ).to_not be_valid

    teacher.grade = "K5"
    teacher.save
    expect( teacher ).to be_valid
  end
end

