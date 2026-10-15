
import Foundation

// Step 1: Array operations
var subjects = ["Swift", "UIKit", "SwiftUI"]

subjects.append("Networking")
subjects.insert("Testing", at: 1)

if let index = subjects.firstIndex(of: "UIKit") {
    subjects.remove(at: index)
}

print("Sorted Subjects:", subjects.sorted())

// Step 2: Set - unique student names
var registered: Set<String> = ["Arun", "Bala", "Divya"]

registered.insert("Arun")
registered.insert("Kavin")
registered.insert("Kavin")

print("Registered Students:", registered)
print("Student Count:", registered.count)

// Step 3: Dictionary - student marks
var marks: [String: Int] = [
    "Arun": 85,
    "Bala": 90,
    "Divya": 95
]

// Add a new student
marks["Kavin"] = 88

// Update an existing student's mark
marks["Bala"] = 92

// Read a student who is not in the dictionary
if let mark = marks["Ravi"] {
    print("Ravi's Mark:", mark)
} else {
    print("Ravi: Not found")
}

// Step 4: Print students in alphabetical order
print("\nStudent Marks:")

for name in marks.keys.sorted() {
    print("\(name): \(marks[name]!)")
}

// Step 5: Find the highest mark and student
if let highest = marks.max(by: { $0.value < $1.value }) {
    print("\nHighest Mark:", highest.value)
    print("Top Student:", highest.key)
}
