require 'rails_helper'

feature "Creating Students" do
  before do
    FactoryGirl.create( :family, name: "Robinson" )

    visit '/'
    click_link "Robinson"
    click_link "Add New Student"
  end

  scenario "Creating a student" do
    fill_in "Name", with: "Steven"
    fill_in "Grade", with: "3"
    click_button "Add Student"

    expect( page ).to have_content( "Student added." )
  end

  scenario "Creating a student without valid attributes fails" do
    click_button "Add Student"

    expect( page ).to have_content( "Student not added." ) 
    expect( page ).to have_content( "Name can't be blank." )
    expect( page ).to have_content( "Grade cannot be blank." )
  end
end 
