require 'rails_helper'

feature 'Creating Educators' do 
  before do
    visit '/' 

    click_link 'New Educator'
  end

pending  scenario "Can create a educator" do
    fill_in 'Educator Name', with: 'Bill'
    click_button 'Create Educator'

    expect( page ).to have_content ( 'Educator created!' )
  end

pending  scenario "Cannot create a educator without a name" do 
    click_button 'Create Educator'

    expect( page ).to have_content( "Educator not created!" ) 
  end
end
