require 'byebug'

class Tower
  attr_accessor :towers

  def initialize
    @towers = Array.new(3) { Array.new {[]} }
    @towers[0] = [3,2,1]
  end

  def move(pos)
    raise "illegal move" unless valid_move?(pos)

    from_pos, to_pos = pos
    disk = @towers[from_pos].pop
    @towers[to_pos].push(disk)
  end

  def valid_move?(pos)
    from_pos, to_pos = pos
    unless @towers[to_pos].empty?
      return false unless @towers[to_pos].last > @towers[from_pos].last
    end
    true
  end

  def won?
    @towers.first.empty? && (@towers[1].empty? || @towers[2].empty?)
  end
end
