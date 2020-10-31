# Merge Sort
def divide(arr)
    return arr if arr.size < 2

    center = arr.size / 2
    left = arr[0...center]
    right = arr[center..-1]
    
    return sort(divide(left), divide(right))
end

def sort(left, right)
    result = [];

    while (left.size > 0 && right.size > 0) do
        result << (left[0] < right[0] ? left.shift() : right.shift())
    end

    result + left + right
end

# Quick Sort
# const quickSort = (arr) => {

#     if (arr.length < 2) {
#         return arr;
#     }

#     const index = arr.length - 1;
#     const element = arr[index];
#     const a = [];
#     const b = [];
#     let temp;

#     for (let i = 0; i < index; i++) {
#         temp = arr[i];
#         temp < element ? a.push(temp) : b.push(temp);
#     }

#     const output = [...quickSort(a), element, ...quickSort(b)]
#     return output;
# }

testArray = [9,5,2,6,8,3,4,1,7]

puts divide(testArray)
# puts merge_sort(testArray)