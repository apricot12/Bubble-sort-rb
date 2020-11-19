def bubble_sort(array)
  len = array.length
  swap = true
  while swap
    swap = false
    (len - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
    end
    break if ! swap
  end
  array
end

test = [2, 79, 100, 54, 9, 12]

p bubble_sort(test)

def bubble_sort_by(arr)
  len = arr.length
  swap = true
  while swap
    swap = false
    (len - 1).times do |i|
      compare = yield arr[i], arr[i + 1]
      if compare.positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
    end
    break if ! swap
  end
  arr
end
yield_test = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
p yield_test
