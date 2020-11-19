def bubble_sort(array)
    len = array.length
    swap = true
    while swap do
        swap = false
        (len-1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
            swap = true
            end
        end
    end
    array
end

test = [2, 79, 100, 54, 9, 12]

p bubble_sort(test)