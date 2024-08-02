class AoCBase
  def load_input(day, part, sample = false)
    path = "input/day#{day}-part#{part}#{sample ? '.sample' : ''}.txt"
    puts path
    File.readlines(path)
  end
end
