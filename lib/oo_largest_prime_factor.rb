# Enter your object-oriented solution here!
class LargestPrimeFactor
  def initialize(n)
    @number = n
  end

  def number
    factors = get_small_factors(@number)
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
end