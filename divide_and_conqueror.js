// Merge Sort
const divide = (arr) => {
    if (arr.length < 2) {
        return arr;
    }

    const center = Math.floor(arr.length / 2);
    const left = arr.slice(0, center);
    const right = arr.slice(center);
    
    return sort(divide(left), divide(right));
}

const sort = (left, right) => {
    const result = [];

    while (left.length && right.length) {
        left[0] < right[0] ? result.push(left.shift()) : result.push(right.shift());
    }

    const output = [...result, ...left, ...right];
    return output;
}

// Quick Sort
const quickSort = (arr) => {

    if (arr.length < 2) {
        return arr;
    }

    const index = arr.length - 1;
    const element = arr[index];
    const a = [];
    const b = [];
    let temp;

    for (let i = 0; i < index; i++) {
        temp = arr[i];
        temp < element ? a.push(temp) : b.push(temp);
    }

    const output = [...quickSort(a), element, ...quickSort(b)]
    return output;
}