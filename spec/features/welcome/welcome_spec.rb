require 'rails_helper' 

RSpec.describe 'welcome page' do 
  it 'is a welcome page with buttons' do
  visit "/"

  expect(page).to have_content("Vinyl Records and Variant Pressings")

  expect(page).to have_content("Records Index")
  expect(page).to have_content("Variants Index")
  end
end 