def bubble_sort(array)
  i = 0
  while i < array.size do
    array.each do |j|
      if array[i] < j
        smaller = array[i]
        bigger = j
        array[i] = bigger
        array[array.index(j)] = smaller
    end
  end
  i += 1
end
print array
end






bubble_sort([4,3,78,2,0,2])