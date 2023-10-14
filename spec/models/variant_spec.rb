require 'rails_helper' 

describe Variant, type: :model do 
  it 'exists' do 
    variant = Variant.new
    expect(variant).to be_a(Variant)
  end
end