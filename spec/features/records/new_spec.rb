# require 'rails_helper' 

# RSpec.describe "records/new", type: :feature do   
#     describe "creating a new Record" do 
#       it 'has a link to create a new Record, "New Record"' do 
#         visit "/records"
        
#         click_on("New Record")

#         expect(current_path).to eq("/records/new")
#       end
#       it 'creates a new record, and redirects me to the Record index' do 
#         visit "/records/new"

#         # within('#authenticity_token') do
#           fill_in 'album', with: 'Infinite Granite'
#           fill_in 'artist', with: 'Deafheaven'
#           fill_in 'Play Speed', with: '33'
#           fill_in 'Double LP', with: 'true'
#         # end
#         click_button 'Add Record'
#         expect(current_path).to eq("/records")

#         visit "/records"
#         save_and_open_page
#         expect(page).to have_content('Infinite Granite')
#       end
#     end
# end 