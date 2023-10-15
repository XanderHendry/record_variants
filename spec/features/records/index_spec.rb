require 'rails_helper' 


RSpec.describe "Records Index", type: :feature do 
  before(:each) do 
    @record1 = Record.create(album: "Glow On", artist: "Turnstile", play_speed: 33, double_lp: false)
    @record2 = Record.create(album: "Blue Sky Noise", artist: "Circa Survive", play_speed: 33, double_lp: true)
   end
  context "As a visitor" do
     describe "When I visit '/records'" do
      it "I see each records Album Title and Artist" do 

        #act
        visit "/records"
        #assert
        expect(page).to have_content("Records")

        expect(page).to have_content(@record1.album)
        expect(page).to have_content("Artist: #{@record1.artist}")

        expect(page).to have_content(@record2.album)
        expect(page).to have_content("Artist: #{@record2.artist}")
      end

      it 'links to each records show page' do
        
        visit "/records"

        click_on @record2.album

        expect(current_path).to eq("/records/#{@record2.id}")
      end

      it "shows when a record was created and orders by most recently created first" do 
        visit "/records"
        expect(@record2.album).to appear_before(@record1.album)
        expect(page).to have_content("Added: #{@record2.created_at}")
        expect(page).to have_content("Added: #{@record1.created_at}")
      end

      it 'has a link to the Variants index' do 
        visit "/records"
        
        click_on("Variants Index")

        expect(current_path).to eq("/variants")
      end
    end
  end
end 