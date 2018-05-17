require 'raindrops_convert'

describe '#divisible_by?' do
  it 'returns true if the number is divisiable by the divisor' do
    expect(6.divisible_by?(3)).to eq(true)
  end

  it 'returns false if the number is not divisiable by the divisor' do
    expect(5.divisible_by?(3)).to eq(false)
  end

  it 'returns true if the number is 0' do
    expect(0.divisible_by?(5)).to eq(true)
  end
end

describe '#raindrops_convert' do
  it 'returns "Pling" if the number has a factor of 3' do
    expect(raindrops_convert(3)).to eq('Pling')
  end

  it 'returns "Plang" if the number has a factor of 5' do
    expect(raindrops_convert(5)).to eq('Plang')
  end

  it 'returns "Plong" if the number has a factor of 7' do
    expect(raindrops_convert(7)).to eq('Plong')
  end

  it 'returns "Plong" if the number has a factor of 3 and 5' do
    expect(raindrops_convert(15)).to eq('PlingPlang')
  end
end
