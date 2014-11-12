require 'rails_helper'

feature "Editing Families" do
  scenario "Updating A Family" do
    FactoryGirl.create( :family, name: "Thomas" )

    visit "/"
    click_link "Thomas"
    click_link "Edit Family" 
    fill_in "Name", with: "Jones"
    click_button "Update Family"

    expect( page ).to have_content( "Family has been updated." )
  end
end

