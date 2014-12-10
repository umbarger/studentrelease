require 'rails_helper'

feature "Viewing Families" do
  scenario "Listing all families" do
    family = FactoryGirl.create( :family, name: "Smith", email: "smith@example.com" )
    visit '/'
    click_link "Smith"
    expect( page.current_url ).to eql( family_url( family ))
  end
end
