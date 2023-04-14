# frozen_string_literal: true

def merge_sort(unsorted_arr)
  # If the array contains only one, or no elements, then it is already sorted
  # and so this is our base case
  return unsorted_arr if unsorted_arr.length < 2

  middle_of_arr = (unsorted_arr.length / 2).to_i

  left_half = unsorted_arr[0, middle_of_arr]
  right_half = unsorted_arr[middle_of_arr, unsorted_arr.length - 1]

  sorted_left_half = merge_sort left_half
  sorted_right_half = merge_sort right_half

  sorted_arr = []

  sorted_arr_counter = left_half_counter = right_half_counter = 0

  while left_half_counter < sorted_left_half.length && right_half_counter < sorted_right_half.length
    if sorted_left_half[left_half_counter] < sorted_right_half[right_half_counter]
      sorted_arr[sorted_arr_counter] = sorted_left_half[left_half_counter]

      left_half_counter += 1
    else
      sorted_arr[sorted_arr_counter] = sorted_right_half[right_half_counter]

      right_half_counter += 1
    end

    sorted_arr_counter += 1
  end

  # If there were any elements left in either sorted_left_half, or
  # sorted_right_half, pick them up, and add them to the sorted_arr
  while left_half_counter < sorted_left_half.length
    sorted_arr[sorted_arr_counter] = sorted_left_half[left_half_counter]

    left_half_counter += 1
    sorted_arr_counter += 1
  end

  while right_half_counter < sorted_right_half.length
    sorted_arr[sorted_arr_counter] = sorted_right_half[right_half_counter]

    right_half_counter += 1
    sorted_arr_counter += 1
  end

  sorted_arr
end

array = [3, 2, 1, 4, 7, 6, 8, 5]

sorted_array = merge_sort array

15.times { print '-' }
print ' Final Sorted Array '
15.times { print '-' }

puts ''

puts sorted_array
