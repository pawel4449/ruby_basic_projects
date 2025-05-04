# Build a method #bubble_sort that takes an array and returns a sorted array.
# It must use the bubble sort methodology

def bubble_sort(array)
  n = array.length - 1

  array.each do
    n.times do |i|
      array[i], array[i + 1] = array[i + 1], array[i] if array[i] > array[i + 1]
    end
  end
  array
end

array = Array.new(10) { Random.rand(100) }
p bubble_sort(array)
