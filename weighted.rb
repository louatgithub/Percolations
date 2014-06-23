class WeightedUnion
  def initialize(n)
    @ids = (0..n-1).to_a
    @sz = Array.new(n + 1, 1)
  end

  def connected?(first_node, second_node)
    root(first_node) == root(second_node)
  end

  def union(first_node, second_node)
    i = root(first_node)
    j = root(second_node)
    if @sz[i] < @sz[j]
      @ids[i] = j
      @sz[j] += @sz[i]
    else
      @ids[j] = i
      @sz[i] += @sz[j]
    end
  end

  def display
    puts @ids
  end

  def root(index)
    while index != @ids[index]
      index = @ids[index]
    end
    index
  end

end

wu = WeightedUnion.new 10

wu.union 1, 9
wu.union(5,7)
wu.union(0,5)
wu.union(3,8)
wu.union(4,2)
wu.union(4,9)
wu.union(8,7)
wu.union(8,2)
wu.union(0,6)

wu.display
