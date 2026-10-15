var numbers = [10, 20, 30, 40, 50]
var reverseArray: [Int] = []

for i in stride(from: numbers.count - 1, through: 0, by: -1) {
    reverseArray.append(numbers[i])
}

print("Original Array:", numbers)
print("Reversed Array:", reverseArray)