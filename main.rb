class AoCBase
  def input_loader(day, sample = false)
    puts "Reading #{sample ? 'sample ' : ''}input for day #{day}"
    path = "input/day#{day}#{sample ? '.sample' : ''}.txt"
    lines = File.readlines(path)
    return lines
  end
end
