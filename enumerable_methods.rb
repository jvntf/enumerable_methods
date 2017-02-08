module Enumerable
	def my_each
		i =0
		while i<self.size
			yield(self[i])
			i+=1
		end
	end

	def my_each_with_index
		i = 0
		while i<self.size
			yield(self[i], i)
			i+=1
		end
	end

	def my_select
		array = Array.new
		self.each do |x|
			
			if yield(x)
			then
				puts x
				array.push(x)
			end
			
		end
		return array
	end
end




