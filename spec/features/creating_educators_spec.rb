require 'rails_helper'

feature 'Creating Educators' do 
  before do
    visit '/' 

    click_link 'New Educator'
  end

pending  scenario "can create a educator" do
    fill_in 'Educator Name', with: 'Bill'
    click_button 'Create Educator'

    expect( page ).to have_content ( 'Educator has been created!' )
    expect( page.current_url ).to eql( educator_url( Educator.where( name: "Bill" ).first ) )
  end

pending  scenario "cannot create a educator without a name" do 
    click_button 'Create Educator'

    expect( page ).to have_content( "Educator has not been created!" ) 
  end
end
