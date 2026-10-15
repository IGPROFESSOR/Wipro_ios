struct StudentValue {
    var name: String
}

class StudentReference {
    var name: String

    init(name: String) {
        self.name = name
    }
}

// Value type: struct
var student1 = StudentValue(name: "Arun")
var student2 = student1

student2.name = "Bala"

print("Struct original:", student1.name)
print("Struct copy:", student2.name)

// Reference type: class
let person1 = StudentReference(name: "Arun")
let person2 = person1

person2.name = "Bala"

print("Class original:", person1.name)
print("Class copy:", person2.name)

// Explanation:
// Struct copies have independent values.
// Class variables refer to the same object,
// so changing person2 also affects person1.