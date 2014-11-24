require 'rails_helper'

feature "Viewing Parents" do
  before do
    goldberg = FactoryGirl.create( :family, name: "Goldberg" )
    FactoryGirl.create( :parent, family: goldberg, first_name: "Jack" )

    chavez = FactoryGirl.create( :family, name: "Chavez" )
    FactoryGirl.create( :parent, family: chavez, first_name: "Willie" )

    visit '/'
  end

  scenario "Viewing parents for a given family" do
    click_link "Goldberg"
  
    expect( page ).to have_content( "Jack" )
    expect( page ).to_not have_content( "Willie" )

    click_link "Jack"
    within( "#parent h2" ) do
      expect( page ).to have_content( "Jack" )
    end
  end
end
