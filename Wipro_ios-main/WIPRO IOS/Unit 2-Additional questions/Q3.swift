
import Foundation

// Given club members
let swiftClub = ["Anu", "Ben", "Chitra", "Dev"]
let uiClub = ["Chitra", "Dev", "Esha"]

// Convert arrays into sets
let swiftSet = Set(swiftClub)
let uiSet = Set(uiClub)

// (a) Members in both clubs
let bothClubs = swiftSet.intersection(uiSet)
print("Members in both clubs:", bothClubs.sorted())

// (b) Members only in the Swift club
let onlySwift = swiftSet.subtracting(uiSet)
print("Only in Swift club:", onlySwift.sorted())

// (c) Everyone in either club
let everyone = swiftSet.union(uiSet)
print("Everyone:", everyone.sorted())

// (d) Members in exactly one club
let exactlyOne = swiftSet.symmetricDifference(uiSet)
print("Members in exactly one club:", exactlyOne.sorted())

// Remove duplicates while keeping original order
let numbers = [3, 1, 3, 2, 1, 4]
var uniqueNumbers: [Int] = []

for number in numbers {
    if !uniqueNumbers.contains(number) {
        uniqueNumbers.append(number)
    }
}

print("Original numbers:", numbers)
print("Without duplicates:", uniqueNumbers)
