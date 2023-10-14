require 'rails_helper' 

RSpec.describe "Record Variants Index", type: :feature do 
  before(:each) do 
    @record = Record.create(album: "No Matter Where It Ends", artist: "Black Sheep Wall", play_speed: 33, double_lp: true)
    @variant1 = @record.variants.create(color: "'Wax Mage'", copies: 25, serialized: true)
    @variant2 = @record.variants.create(color: "'Boris' Purple/ Jungle Swirl", copies: 200, serialized: false)
   end
  context "As a visitor" do
     describe "When I visit '/records/record_id/variants'" do
      it "will show each of a records variants, along with their attributes" do 
        #act
        visit "/records/#{@record.id}/variants"
        #assert
       
        expect(page).to have_content("#{@record.album} Variants")
        
        expect(page).to have_content(@record.album)
        expect(page).to have_content("Color: #{@variant1.color}")
        expect(page).to have_content("Copies: #{@variant1.copies}")
        expect(page).to have_content("Serialized")
        expect(page).to have_content("Color: #{@variant2.color}")
        expect(page).to have_content("Copies: #{@variant2.copies}")
      end
    end
  end
end 