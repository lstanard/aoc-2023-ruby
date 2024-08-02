require 'rspec'
require_relative '../lib/day1'

RSpec.describe Day1 do
  it 'should return correct value for part 1 sample data' do
    expect(Day1.new.part1(true)).to eq 142
  end

  it 'should return correct value for input data' do
    expect(Day1.new.part1).to eq 54_081
  end

  # it 'should return correct value for part 2 sample data' do
  #   expect(Day1.new.part2(true)).to eq 281
  # end

  it 'should return correct value for input data' do
    expect(Day1.new.part2).to eq 0
    # 54627 is too low
  end
end
