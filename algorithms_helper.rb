require 'rubygems'
require 'pry'

class AlgorithmHelper

  # Method to sort an array using Merge Sort algorithm
  #
  # Author:: Jayesh 
  # Date:: 5 Jan 2013
  #
  # Expects: 
  # => stub - Array of integers
  # 
  # Returns:
  # => Sorted array
  def self.mergesort(stub)
    length = stub.size
    mid  = length / 2
    return stub if length == 1

    # Divide
    left  = stub[0...mid]
    right = stub[mid...(length)]
    # Conquer
    return merge(mergesort(left), mergesort(right))
  end

  private

  # Helper method for merging, used in Merge sort
  #
  # Author:: Jayesh 
  # Date:: 5 Jan 2013
  #
  # Expects: 
  # => left - Left half of array formed at divide step
  # => right - Right half of array formed at divide step
  #
  # Returns:
  # => Merged left and right array
  def self.merge(left, right)
    sorted = []
    until left.empty? or right.empty?
      left.first <= right.first ? sorted << left.shift : sorted << right.shift
    end
    sorted = sorted + left + right
  end
end