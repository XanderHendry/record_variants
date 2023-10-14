require 'rails_helper' 

RSpec.describe "Records Show", type: :feature do 
  context 'as a visitor' do
    describe "When I visit '/records/:id'" do 
      it "shows the record with that id and the record's attributes" do 
        record = Record.create(album: "Blue Sky Noise", artist: "Circa Survive", play_speed: 33, double_lp: true)

        visit "records/#{record.id}"

        
        expect(page).to have_content(record.album)
        expect(page).to have_content("Artist: #{record.artist}")
        expect(page).to have_content("Play Speed: #{record.play_speed}rpm")
        expect(page).to have_content("Format: 2xVinyl LP")
      end
    end
  end
end 

# User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)