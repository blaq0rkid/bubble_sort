def bubble_sort(array)
  bubble_sort_by(array) { |left, right| right - left }
end

def bubble_sort_by(array, &block)
  i = 1
  while array.size - i > 0 do
    j = 0
    while j < array.size - i do
      box = array.slice!(j, 2)
      box.rotate! if block.call(box.first, box.last) < 0
      array.insert(j, box).flatten!
      j += 1
    end
    i += 1
  end
  array
end