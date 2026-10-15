var number = 153

// Palindrome check
var temp = number
var reverse = 0

while temp > 0 {
    let digit = temp % 10
    reverse = reverse * 10 + digit
    temp /= 10
}

if number == reverse {
    print("Palindrome")
} else {
    print("Not Palindrome")
}

// Armstrong check
temp = number
var sum = 0

while temp > 0 {
    let digit = temp % 10
    sum += digit * digit * digit
    temp /= 10
}

if sum == number {
    print("Armstrong Number")
} else {
    print("Not Armstrong Number")
}