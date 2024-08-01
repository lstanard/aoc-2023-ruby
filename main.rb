class AoCBase
  def input_loader(day, sample = false)
    puts "Reading #{sample ? 'sample ' : ''}input for day #{day}"
    path = "input/day#{day}#{sample ? '.sample' : ''}.txt"
    lines = File.readlines('input/day1.sample.txt')
    return lines
  end
end
