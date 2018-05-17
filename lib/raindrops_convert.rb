def raindrops_convert(number)
  rules = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }
  result_arr = rules.map do |factor, string|
    (number % factor).zero? ? string : ''
  end
  converted_string = result_arr.join('')
  converted_string.empty? ? number : converted_string
end
