require 'rails_helper' 

RSpec.describe Record, type: :model do 
  it 'exists' do 
    record = Record.new
    expect(record).to be_a(Record)
  end

  describe "::order_by_most_recent" do 
    it 'will order records by most recently created' do 
      record1 = Record.create
      record2 = Record.create
      expect(Record.order_by_most_recent).to eq([record2, record1])
    end
  end

  describe "::count_variants" do
    it 'will count the number of Variants that belong to a Record' do 
      record = Record.create
      variant1 = record.variants.create
      variant2 = record.variants.create
      expect(record.count_variants).to eq(2)
    end
  end
end
