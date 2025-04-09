class SumOfIntegersInString
  def self.add(numbers)
    numbers.scan(/\d+/).map(&:to_i).sum
  end
end