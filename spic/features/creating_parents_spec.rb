require 'rails_helper'

feature "Creating Parents" do
  before do
    FactoryGirl.create( :family, name: "Robinson" )

    visit '/'
    click_link "Robinson"
    click_link "Add New Parent"
  end

  scenario "Creating a parent" do
    fill_in "Name", with: "Mike"
    click_button "Save Parent"

    expect( page ).to have_content( "Parent added." )
  end

  scenario "Creating a parent without valid attributes fails" do
    click_button "Save Parent"

    expect( page ).to have_content( "Parent not added." ) 
    expect( page ).to have_content( "Name can't be blank." )
  end
end 
