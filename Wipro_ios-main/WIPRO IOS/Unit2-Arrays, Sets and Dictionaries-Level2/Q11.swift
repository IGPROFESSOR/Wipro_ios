let numbers = Array(1...20)

let evenNumbers = numbers.filter { $0 % 2 == 0 }
let squares = evenNumbers.map { $0 * $0 }
let total = squares.reduce(0, +)

print("Even Numbers:", evenNumbers)
print("Squares:", squares)
print("Sum of Squares:", total)