struct Student {
    var name: String
    var marks: Int

    init?(name: String, marks: Int) {
        if marks < 0 || marks > 100 {
            return nil
        }

        self.name = name
        self.marks = marks
    }
}

if let student = Student(name: "Arun", marks: 85) {
    print("Name:", student.name)
    print("Marks:", student.marks)
} else {
    print("Invalid student marks")
}

if let student = Student(name: "Bala", marks: 120) {
    print("Name:", student.name)
} else {
    print("Invalid student marks")
}