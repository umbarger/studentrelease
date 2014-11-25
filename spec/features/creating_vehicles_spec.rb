require 'rails_helper'

feature 'Creating Vehicles' do 
  before do
    FactoryGirl.create( :family, name: "Torre" )

    visit '/' 
    click_link 'Torre'
    click_link 'Add New Vehicle'
  end

  scenario "Adding a vehicle" do
    fill_in 'Year', with: '2011'
    fill_in 'Make', with: 'Acura'
    fill_in 'Model', with: 'TSX'
    fill_in 'Color', with: 'White'
    fill_in 'License', with: 'ABC-6328'
    fill_in 'State', with: 'North Carolina'
    click_button 'Save Vehicle'

    expect( page ).to have_content ( 'Vehicle has been added!' )
    expect( page.current_url ).to eql( vehicle_url( Vehicle.where( name: "Acura" ).first ) )
  end

  scenario "cannot add a vehicle without a name" do 
    click_button 'Add New Vehicle'

    expect( page ).to have_content( "Vehicle has not been added!" ) 
  end
end
