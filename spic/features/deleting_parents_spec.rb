require 'rails_helper'

feature "Deleting Families" do
  scenario "Deleting A Family" do
    FactoryGirl.create( :family, name: "Rogers" ) 

    visit "/"
    click_link "Rogers"
    click_link "Delete Family"

    visit "/"

    expect( page ).to have_no_content( "Rogers" )
  end
end

