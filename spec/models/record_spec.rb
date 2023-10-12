require 'rails_helper' 

describe Record, type: :model do 
  it 'exists' do 
    record = Record.new
    expect(record).to be_a(Record)
  end
end