
import Foundation

// Step 1: Create BookStatus enum
enum BookStatus {
    case available
    case borrowed(by: String, dueIns: Int)
    case reserved(for: String)

    // Step 2: Computed property
    var label: String {
        switch self {
        case .available:
            return "Available"

        case .borrowed(let name, let dueIns):
            return "Borrowed by \(name), due in \(dueIns) days"

        case .reserved(let name):
            return "Reserved for \(name)"
        }
    }
}

// Step 3: Create Book struct
struct Book {
    var title: String
    var status: BookStatus = .available
}

// Step 4: Create Member class
class Member {
    var name: String
    var borrowedBooks: [String]

    init(name: String, borrowedBooks: [String] = []) {
        self.name = name
        self.borrowedBooks = borrowedBooks
    }
}

// Step 5: Copy a Book and change the copy
var book1 = Book(title: "Swift Basics")
var book2 = book1

book2.status = .borrowed(by: "Arun", dueIns: 7)

print("Original Book:", book1.title, "-", book1.status.label)
print("Copied Book:", book2.title, "-", book2.status.label)

// Step 6: Share a Member class instance
let member1 = Member(name: "Arun", borrowedBooks: ["Swift Basics"])
let member2 = member1

member2.name = "Bala"

print("Member 1:", member1.name)
print("Member 2:", member2.name)
