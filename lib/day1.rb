require_relative '../main'

class Day1 < AoCBase
  def part1(sample=false)
    input = self.load_input(1, 1, sample)
    result = 0
    num_regex = /\d/
    input.each do |i|
      matches = i.scan(num_regex)
      value = "#{matches[0]}#{matches.length > 1 ? matches.last : matches[0]}"
      result += value.to_i
    end
    return result
  end

  def part2(sample=false)
    result = 0
    return result
  end
end
