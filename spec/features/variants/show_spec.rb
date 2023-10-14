require 'rails_helper' 

RSpec.describe "Records Show", type: :feature do 
  context 'as a visitor' do
    describe "When I visit '/variant/:id'" do 
      it "shows the record with that id and the record's attributes" do 
        record = Record.create(album: "Blue Sky Noise", artist: "Circa Survive", play_speed: 33, double_lp: true)
        variant = record.variants.create(color: "Blue/White/Green Twister", copies: 500, serialized: false, record_id: record.id)
        visit "variant/#{variant.id}"
        
        expect(page).to have_content(variant.record.album)
        expect(page).to have_content("Color: #{variant.color}")
        expect(page).to have_content("Copies: #{variant.copies}")
        expect(page).to have_content("Serialized: #{variant.serialized}")
      end
    end
  end
end 