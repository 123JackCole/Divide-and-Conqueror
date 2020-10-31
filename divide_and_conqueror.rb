# Merge Sort
def divide(arr)
    return arr if arr.length < 2

    center = arr.length / 2
    left = arr[0...center]
    right = arr[center..-1]
    
    sort(divide(left), divide(right))
end

def sort(left, right)
    result = [];

    while (left.length > 0 && right.length > 0) do
        result << (left[0] < right[0] ? left.shift() : right.shift())
    end

    result + left + right
end

# Quick Sort
def quickSort(arr)

    return arr if arr.length < 2

    index = arr.length - 1
    element = arr.pop
    left, right = [], []

    for current in arr
        current < element ? left.push(current) : right.push(current)
    end

    quickSort(left) + [element] + quickSort(right)
end

testArray = [9,5,2,6,8,3,4,1,7]

puts divide(testArray)
puts quickSort(testArray)