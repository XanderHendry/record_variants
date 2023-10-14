require 'rails_helper' 


RSpec.describe "Records Index", type: :feature do 
  context "As a visitor" do
     describe "When I visit '/records'" do
      it "I see each song's title and play count" do 
        record1 = Record.create(album: "Glow On", artist: "Turnstile", play_speed: 33, double_lp: false)
        record2 = Record.create(album: "Blue Sky Noise", artist: "Circa Survive", play_speed: 33, double_lp: true)

        #act
        visit "/records"
        #assert
        expect(page).to have_content("Records")

        expect(page).to have_content(record1.album)
        expect(page).to have_content("Artist: #{record1.artist}")

        expect(page).to have_content(record2.album)
        expect(page).to have_content("Artist: #{record2.artist}")
      end

      it 'links to each records show page' do
        record2 = Record.create(album: "Blue Sky Noise", artist: "Circa Survive", play_speed: 33, double_lp: true)
        
        visit "/records"

        click_on record2.album

        expect(current_path).to eq("/records/#{record2.id}")
      end
    end
  end
end 