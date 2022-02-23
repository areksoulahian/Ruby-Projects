# bubble sort

def bubble_sort(array)
  array.length.times do
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end
  array
    
end

bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

