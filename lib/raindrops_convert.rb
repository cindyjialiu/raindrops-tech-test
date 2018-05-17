public
def divisible_by?(divisor)
  (self % divisor).zero?
end

def raindrops_convert(n)
  return 'Pling' if n.divisible_by?(3)
  return 'Plang' if n.divisible_by?(5)
  return 'Plong' if n.divisible_by?(7)
end
