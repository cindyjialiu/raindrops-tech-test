require 'raindrops_convert'

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

  it 'returns "PlingPlang" if the number has a factor of 3 and 5' do
    expect(raindrops_convert(15)).to eq('PlingPlang')
  end

  it 'returns "PlingPlong" if the number has a factor of 3 and 7' do
    expect(raindrops_convert(21)).to eq('PlingPlong')
  end

  it 'returns "PlangPlong" if the number has a factor of 5 and 7' do
    expect(raindrops_convert(35)).to eq('PlangPlong')
  end

  it 'returns "PlingPlangPlong" if the number has a factor of 3,5 and 7' do
    expect(raindrops_convert(105)).to eq('PlingPlangPlong')
  end

  it 'returns 1 if the number does not have a factor of 3,5 or 7' do
    expect(raindrops_convert(1)).to eq(1)
  end

  it 'returns "PlingPlangPlong" if the number is 0' do
    expect(raindrops_convert(0)).to eq('PlingPlangPlong')
  end
end
