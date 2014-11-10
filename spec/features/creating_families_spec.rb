require 'rails_helper'

feature 'Creating Families' do 
  scenario "can create a family" do
    visit '/' 

    click_link 'New Family'

    fill_in 'Family Name', with: 'Smith'

    click_button 'Create Family'

    expect( page ).to have_content ( 'Family has been created!' )
  end
end
