#!/usr/bin/env ruby

class QuickFind
  def initialize(n)
    @ids = (0..n-1).to_a
  end
  
  def connected?(id1,id2)
    @ids[id1] == @ids[id2]
  end
  
  def union(id1,id2)
    id_1, id_2 = @ids[id1], @ids[id2]
    @ids.map! {|i| (i == id_1) ? id_2 : i }
  end
  def display
    puts @ids
  end
end

# Test Case
qf = QuickFind.new 10

qf.union(8,3)
qf.union(9,4)
qf.union(0,7)
qf.union(2,4)
qf.union(1,7)
qf.union(1,2)
puts qf.display