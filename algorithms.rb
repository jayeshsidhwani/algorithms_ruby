require 'rubygems'
require 'pry'

class Algorithm
  def self.mergesort(container)
    length = container.size
    mid  = length / 2
    return container if length == 1
    # Divide
    left  = container[0...mid]
    right = container[mid...(length)]
    # Conquer
    left_sort = mergesort(left)
    right_sort = mergesort(right)
    # Merge
    merge(left_sort, right_sort)
  end

  private

  def self.merge(left, right)
    sorted = []
    until left.empty? or right.empty?
      left.first <= right.first ? sorted << left.shift : sorted << right.shift
    end
    until left.empty?
      sorted << left.shift
    end
    until right.empty?
      sorted << right.shift
    end
    puts "#{sorted}"
    return sorted
  end
end


array = [2, 4, 1, 7, 8, 5, 0]
Algorithm.mergesort(array)
