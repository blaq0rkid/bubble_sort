def bubble_sort arr

len = arr.size

while true
	noSwaps =0
	for i in (0..len-1)
		if(i!=len-1 && arr[i]>arr[i+1] )
			noSwaps +=1
			arr[i] , arr[i+1] = arr[i+1] , arr[i]
			
		end
	end

	if noSwaps==0
		break
	end

end


return arr

end



puts bubble_sort [4,3,78,2,0,2]



####################################   bubble_sort_by ######################

def bubble_sort_by(array) 
  counter = array.size - 1

  while counter > 0
    1.upto(counter) do |number|
      if yield(array[number - 1], array[number]) < 0
        array[number - 1], array[number] = array[number], array[number - 1]
      end
    end
    counter -= 1
  end

  return array
end


puts bubble_sort_by(["hi","hello","hey"]) { |left, right| right.length - left.length }