def merge_sort(array)
  # Base case, no merge if single element
  if array.length == 1
    array
  else
    # Split array to left and right side, recursively call merge_sort
    left = merge_sort(array[0..((array.length - 1) / 2)])
    right = merge_sort(array[(((array.length - 1) / 2) + 1)..array.length - 1])
    puts "RIGHT:#{right}    LEFT:#{left}"
    sorted = []
    # Check if either side is empty, push lower element, then higher
    while left.length > 0 && right.length > 0
      if left[0] > right[0]
        sorted << right[0]
        # Shift is necessary to reset left/right
        right.shift
      else
        sorted << left[0]
        left.shift
      end
    end
    # Merge left, right, unless there's an empty array
    sorted += if left.length == 0
                right
              else
                left
              end

    sorted
  end
end

arr = [5, 15, 25, 3, 4, 2, 1, 3, 6, 4, 8, 10, 3]
p merge_sort(arr)
