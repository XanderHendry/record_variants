require 'rails_helper' 


RSpec.describe "Records Index", type: :feature do 
  context "As a user" do
     describe "When I visit '/records'" do
      it "I see each song's title and play count" do 
        record1 = Record.create!(album: "Glow On", artist: "Turnstile")
        record2 = Record.create!()

        #act
        visit "/records"

        #assert
        expect(page).to have_content("All records")

        expect(page).to have_content("Album: #{record1.album}")
        expect(page).to have_content("Artist: #{record1.artist}")
        expect(page).to have_content("Play Speed: #{record1.play_speed}")
        expect(page).to have_content("Double LP: #{record1.double_lp}")

        expect(page).to have_content("Album: #{record2.album}")
        expect(page).to have_content("Artist: #{record2.artist}")
        expect(page).to have_content("Play Speed: #{record2.play_speed}")
        expect(page).to have_content("Double LP: #{record2.double_lp}")  
      end
    end
  end
end 