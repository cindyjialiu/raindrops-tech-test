public
def divisible_by?(divisor)
  (self % divisor).zero?
end

def raindrops_convert(number)
  rules = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  result_arr = rules.map do |num, string|
    number.divisible_by?(num) ? '' + string : ''
  end
  converted_string = result_arr.join('')
  converted_string.empty? ? number : converted_string
  # return 'Pling' if n.divisible_by?(3)
  # return 'Plang' if n.divisible_by?(5)
  # return 'Plong' if n.divisible_by?(7)
end
