require File.join(File.dirname(__FILE__), 'algorithms_helper.rb')

class Algorithm 
	def self.do_merge_sort
		array = [2, 4, 1, 7, 8, 5, 40, 38]
		puts "#{AlgorithmHelper.mergesort(array)}"
	end
end

Algorithm.do_merge_sort