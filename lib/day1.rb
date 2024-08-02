require_relative '../main'

# Day 1 Solution
class Day1 < AoCBase
  def part1(sample = false)
    input = load_input(1, 1, sample)
    result = 0
    num_regex = /\d/
    input.each do |i|
      matches = i.scan(num_regex)
      value = "#{matches[0]}#{matches.length > 1 ? matches.last : matches[0]}"
      result += value.to_i
    end
    result
  end

  # This isn't working, and I'm trying to decide if I need to think of an entirely different approach
  def part2(sample = false)
    number_map = { 'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6,
                   'seven' => 7, 'eight' => 8, 'nine' => 9 }
    input = load_input(1, 2, sample)
    result = 0
    regex = /(1|2|3|4|5|6|7|8|9|one|two|three|four|five|six|seven|eight|nine)/
    input.each_with_index do |line, index|
      matches = line.scan(regex)
      first_number = number_map[matches[0][0]] || matches[0][0]
      second_number = matches.length > 1 ? (number_map[matches.last[0]] || matches.last[0]) : first_number
      value = "#{first_number}#{second_number}"
      result += value.to_i
    end
    result
  end
end
