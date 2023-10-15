require 'rails_helper' 

RSpec.describe "Records Show", type: :feature do 
  context 'as a visitor' do
    before(:each) do 
      @record = Record.create(album: "Blue Sky Noise", artist: "Circa Survive", play_speed: 33, double_lp: true)
      @variant = @record.variants.create(color: "Blue/White/Green Twister", copies: 500, serialized: false)
     end
    describe "When I visit '/variant/:id'" do 
      it "shows the record with that id and the record's attributes" do 
        visit "variant/#{@variant.id}"
        
        expect(page).to have_content(@variant.record.album)
        expect(page).to have_content("Color: #{@variant.color}")
        expect(page).to have_content("Copies: #{@variant.copies}")
        expect(page).to have_content("Serialized: #{@variant.serialized}")
      end

      it 'has a link to the Variants index' do 
        visit "variant/#{@variant.id}"
        
        click_on("Variants Index")

        expect(current_path).to eq("/variants")
      end
      it 'has a link to the Records index' do 
        visit "variant/#{@variant.id}"
        
        click_on("Records Index")

        expect(current_path).to eq("/records")
      end
    end
  end
end 