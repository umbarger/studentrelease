require 'rails_helper'

feature "Editing Families" do
  before do
    FactoryGirl.create( :family, name: "Thomas", email: "thomas@email.com" )

    visit "/"
    click_link "Thomas"
    click_link "Edit Family" 
  end

  scenario "Updating a family" do
    fill_in "Name", with: "Jones"
    click_button "Update Family"

    expect( page ).to have_content( "Family has been updated." )
  end
end

