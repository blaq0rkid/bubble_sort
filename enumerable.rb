module Enumerable
	def my_each
		return self unless block_given?
		for i in self
			yield i
		end
		self
	end
	def my_each_with_index
		return self unless block_given?
		for i in 0...self.length
			yield self[i], i 
		end
		self
	end
	def my_select
		return self unless block_given?
		new_array = []
		for i in self
			if yield i
				new_array.push i
			end
		end
		new_array
	end
	def my_all?
		return true unless block_given?
		for i in self
			return false unless yield i
		end
		true
	end
	def my_any?
		return true unless block_given?
		for i in self
			return true if yield i
		end
		false
	end
	def my_none?
		return true unless block_given?
		for i in self
			return false if yield i
		end
		true
	end
	def my_count
		return 0 unless block_given?
		count = 0
		for i in self
			count += 1 if yield i
		end
		count
	end
	def my_map
		return self unless block_given?
		new_array = []
		for i in self
			new_array.push yield i
		end
		new_array
	end
	def my_inject
		return self unless block_given?
		running_total = self[0]
		(self.length).times do |i|
			next if i == 0
			running_total = yield running_total, self[i]
		end
		running_total
	end
end
def multiply_els array
	array.my_inject { |total, num| total * num }
end