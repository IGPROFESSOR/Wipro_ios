let prices: [String: Double] = [
    "Apple": 20.0,
    "Milk": 30.0,
    "Bread": 40.0,
    "Eggs": 60.0
]

let cart = ["Apple", "Milk", "Bread", "Apple"]

var total = 0.0

print("Shopping Bill:")

for item in cart {
    if let price = prices[item] {
        print("\(item): ₹\(price)")
        total += price
    } else {
        print("\(item): Item not found")
    }
}

print("Total Bill: ₹\(total)")