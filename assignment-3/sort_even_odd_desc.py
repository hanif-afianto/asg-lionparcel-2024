def sort_even_odd_desc(arr):
    return sorted(arr, key=lambda x: (x % 2, -x))

# Example usage
input_arr = [3, 18, 2, 5, 1, 8, 9, 19, 6]
output_arr = sort_even_odd_desc(input_arr)
print(output_arr)  # Output should be: [18, 8, 6, 2, 19, 9, 5, 3, 1]