struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int
}

let student1 = Student(name: "Arun", rollNumber: 101, marks: 85)
let student2 = Student(name: "Divya", rollNumber: 102, marks: 92)

print("Name:", student1.name)
print("Roll Number:", student1.rollNumber)
print("Marks:", student1.marks)

print("Name:", student2.name)
print("Roll Number:", student2.rollNumber)
print("Marks:", student2.marks)