require 'raindrops_convert'

describe '#divisible_by?' do
  it 'returns true if the number is divisiable by the divisor' do
    expect(6.divisible_by?(3)).to eq(true)
  end

  it 'returns false if the number is not divisiable by the divisor' do
    expect(5.divisible_by?(3)).to eq(false)
  end
end
