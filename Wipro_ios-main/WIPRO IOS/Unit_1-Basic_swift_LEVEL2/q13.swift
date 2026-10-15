var number = 7
var isPrime = true

if number <= 1 {
    isPrime = false
} else {
    for i in 2..<number {
        if number % i == 0 {
            isPrime = false
            break
        }
    }
}

if isPrime {
    print("Prime")
} else {
    print("Not Prime")
}

print("Primes from 1 to 50:")

for num in 2...50 {
    var prime = true

    for i in 2..<num {
        if num % i == 0 {
            prime = false
            break
        }
    }

    if prime {
        print(num, terminator: " ")
    }
}