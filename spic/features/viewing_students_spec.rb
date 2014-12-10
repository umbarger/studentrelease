require 'rails_helper'

feature "Viewing Students" do
  before do
    goldberg = FactoryGirl.create( :family, name: "Goldberg" )
    FactoryGirl.create( :student, family: goldberg, first_name: "Steven", grade: 9 )

    chavez = FactoryGirl.create( :family, name: "Chavez" )
    FactoryGirl.create( :student, family: chavez, first_name: "John", grade: 11 )

    visit '/'
  end

  scenario "Viewing students for a given family" do
    click_link "Goldberg"
  
    expect( page ).to have_content( "Steven" )
    expect( page ).to_not have_content( "John" )

    click_link "Steven"
    within( "#student h2" ) do
      expect( page ).to have_content( "Steven" )
    end

    expect( page ).to have_content( "9" )
  end
end
