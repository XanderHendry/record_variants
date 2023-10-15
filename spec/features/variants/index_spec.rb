require 'rails_helper' 

RSpec.describe "Variants Index", type: :feature do 
  before(:each) do 
    @record1 = Record.create(album: "Blue Sky Noise", artist: "Circa Survive", play_speed: 33, double_lp: true)
    @variant1 = @record1.variants.create(color: "Blue/White/Green Twister", copies: 500, serialized: false, record_id: @record1.id)
    @record2 = Record.create(album: "No Matter Where It Ends", artist: "Black Sheep Wall", play_speed: 33, double_lp: true)
    @variant2 = @record2.variants.create(color: "'Wax Mage'", copies: 25, serialized: true)
    @variant3 = @record2.variants.create(color: "'Boris' Purple/ Jungle Swirl", copies: 200, serialized: false)
   end
  context "as a visitor" do
    describe "When I visit '/variants'" do 
      it "will show each variant in the system including the variant's attributes" do 
        #act
        visit "/variants"
        #assert
        expect(page).to have_content("Variants Index")
        
        expect(page).to have_content(@record1.album)
        expect(page).to have_content("Color: #{@variant1.color}")
        expect(page).to have_content("Copies: #{@variant1.copies}")
        expect(page).to have_content("Serialized: #{@variant1.serialized}")
        expect(page).to have_content(@record2.album)
        expect(page).to have_content("Color: #{@variant2.color}")
        expect(page).to have_content("Copies: #{@variant2.copies}")
        expect(page).to have_content("Serialized: #{@variant2.serialized}")
        expect(page).to have_content("Color: #{@variant3.color}")
        expect(page).to have_content("Copies: #{@variant3.copies}")
        expect(page).to have_content("Serialized: #{@variant3.serialized}")
      end

      it 'links to each variants show page' do
        
        visit "/variants"

        click_on @variant1.color

        expect(current_path).to eq("/variant/#{@variant1.id}")
      end

      it 'has a link to the Records index' do 
        visit "/variants"
        
        click_on("Records Index")

        expect(current_path).to eq("/records")
      end
    end
  end
end 

# Then I see each Child in the system including the Child's attributes
# (data from each column that is on the child table)
