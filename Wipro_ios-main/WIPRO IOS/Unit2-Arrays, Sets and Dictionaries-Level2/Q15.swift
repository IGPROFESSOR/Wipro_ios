let numbers = [10, 50, 30, 40, 50, 20]

var largest = Int.min
var secondLargest = Int.min

for number in numbers {
    if number > largest {
        secondLargest = largest
        largest = number
    } else if number > secondLargest && number < largest {
        secondLargest = number
    }
}

if secondLargest == Int.min {
    print("Second largest not found")
} else {
    print("Second Largest:", secondLargest)
}