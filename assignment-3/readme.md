# Sort Even and Odd Numbers in Descending Order

This repository contains implementations in **Python** for a function that sorts an array of integers. The function returns the array sorted in descending order, with even numbers first and odd numbers following.

## Table of Contents
- [Function Description](#function-description)
- [Python Implementation](#python-implementation)
  - [Requirements](#requirements)
  - [Usage](#usage)

## Function Description

The function takes an input array of integers and returns a new array where:
1. **Even numbers** are sorted in descending order and appear first.
2. **Odd numbers** are also sorted in descending order but follow the even numbers.

### Example

Input:
```plaintext
[3, 2, 5, 1, 8, 9, 6]
```

Output:
```plaintext
[8, 6, 2, 9, 5, 3, 1]
```

## Python Implementation

### Requirements
- [**Python 3.6+**](https://www.python.org/)

**Code**

```python
def sort_even_odd_desc(arr):
    return sorted(arr, key=lambda x: (x % 2, -x))

# Example usage
input_arr = [3, 18, 2, 5, 1, 8, 9, 19, 6]
output_arr = sort_even_odd_desc(input_arr)
print(output_arr)  # Output should be: [18, 8, 6, 2, 19, 9, 5, 3, 1]
```

### Usage

1. Copy the code into a Python file (e.g., `sort_even_odd_desc.py`).
2. Run the file:
```bash
python sort_even_odd_desc.py
```
3. The output will be displayed in the console.


