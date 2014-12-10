require 'rails_helper'

feature 'Creating Teachers' do 
  before do
    visit '/' 

    click_link 'New Teacher'
  end

pending scenario "Can create a teacher" do
    fill_in ' Name', with: 'Bill'
    click_button 'Save Teacher'

    expect( page ).to have_content ( 'Teacher created!' )
  end

pending  scenario "Cannot create a teacher without a name" do 
    click_button 'Save Teacher'

    expect( page ).to have_content( "Teacher not created!" ) 
  end
end
