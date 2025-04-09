class SumOfIntegersInString
  def self.add(numbers)
    nums = numbers.scan(/-?\d+/).map(&:to_i)
    negatives = nums.select { |n| n < 0 }

    if negatives.any?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    nums.sum
  end
end