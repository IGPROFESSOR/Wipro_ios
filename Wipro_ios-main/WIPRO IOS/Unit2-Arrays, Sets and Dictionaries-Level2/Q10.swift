let numbers = [10, 20, 10, 30, 20, 40, 30]
var uniqueNumbers: [Int] = []

for number in numbers {
    if !uniqueNumbers.contains(number) {
        uniqueNumbers.append(number)
    }
}

print("Original:", numbers)
print("Without Duplicates:", uniqueNumbers)