# Enter your procedural solution here!
def largest_prime_factor(n)
  factors = get_small_factors(n)
  factors.each do |factor|
    if get_small_factors(factor).empty?
      return factor
    end
  end
end

def get_small_factors(n)
  limit = Math.sqrt(n).floor
  i = limit
  lpf = 0
  factors = Array.new
  while i > 1
    if n % i == 0
      factors << i
    end
    i -= 1
  end
  return factors
end
puts "#{largest_prime_factor(26)}"