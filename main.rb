class AoCBase
  def load_input(day, part, sample = false)
    return File.readlines("input/day#{day}-part#{part}#{sample ? '.sample' : ''}.txt")
  end
end
