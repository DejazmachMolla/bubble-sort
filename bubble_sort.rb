def bubble_sort(unsorted_array)
  last_unsorted_index = unsorted_array.length - 1
  while last_unsorted_index.positive?
    unsorted_array.each_with_index do |_val, index|
      break if index >= last_unsorted_index

      if unsorted_array[index] > unsorted_array[index + 1]
        unsorted_array[index], unsorted_array[index + 1] = unsorted_array[index + 1], unsorted_array[index]
      end
    end
    last_unsorted_index -= 1
  end
  unsorted_array
end

def bubble_sort_by(unsorted_array)
  last_unsorted_index = unsorted_array.length - 1
  while last_unsorted_index.positive?
    unsorted_array.each_with_index do |_val, index|
      break if index >= last_unsorted_index

      if (yield unsorted_array[index], unsorted_array[index + 1]).positive?
        unsorted_array[index], unsorted_array[index + 1] = unsorted_array[index + 1], unsorted_array[index]
      end
    end
    last_unsorted_index -= 1
  end
  unsorted_array
end
