// 2.1: Leap year checks
let year1 = 1900
let year2 = 2000
let year3 = 2024
let year4 = 2026

print("1900 is leap year:", year1 % 400 == 0 || (year1 % 4 == 0 && year1 % 100 != 0))
print("2000 is leap year:", year2 % 400 == 0 || (year2 % 4 == 0 && year2 % 100 != 0))
print("2024 is leap year:", year3 % 400 == 0 || (year3 % 4 == 0 && year3 % 100 != 0))
print("2026 is leap year:", year4 % 400 == 0 || (year4 % 4 == 0 && year4 % 100 != 0))

// 2.2: Check whether a number is between 1 and 100
let number1 = 50
let inRange = (1...100).contains(number1)
print("Between 1 and 100:", inRange)

// 2.3: Even and not a multiple of 10
let number2 = 24
let result = (number2 % 2 == 0) && (number2 % 10 != 0)
print("Even and not a multiple of 10:", result)

// 2.4: Print nickname or Guest
let nickname: String? = nil
print("Nickname:", nickname ?? "Guest")