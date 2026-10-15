
enum Grade: String {
    case A = "A"
    case B = "B"
    case C = "C"
    case D = "D"
    case F = "F"

    static func calculate(marks: Int) -> Grade {
        switch marks {
        case 90...100: return .A
        case 75..<90: return .B
        case 60..<75: return .C
        case 40..<60: return .D
        default: return .F
        }
    }
}

struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int

    var grade: Grade {
        return Grade.calculate(marks: marks)
    }

    init?(name: String, rollNumber: Int, marks: Int) {
        guard (0...100).contains(marks) else {
            return nil
        }

        self.name = name
        self.rollNumber = rollNumber
        self.marks = marks
    }
}

class School {
    var students: [Student] = []

    func addStudent(_ student: Student) {
        students.append(student)
        print("Added student:", student.name)
    }

    func printReport() {
        print("\nSTUDENT REPORT")
        print("-------------------------")

        let sortedStudents = students.sorted {
            $0.marks > $1.marks
        }

        for student in sortedStudents {
            print("Name: \(student.name)")
            print("Roll Number: \(student.rollNumber)")
            print("Marks: \(student.marks)")
            print("Grade: \(student.grade.rawValue)")
            print("-------------------------")
        }
    }
}

let school = School()

if let s1 = Student(name: "Arun", rollNumber: 101, marks: 85) {
    school.addStudent(s1)
}

if let s2 = Student(name: "Bala", rollNumber: 102, marks: 95) {
    school.addStudent(s2)
}

if let s3 = Student(name: "Divya", rollNumber: 103, marks: 72) {
    school.addStudent(s3)
}

if let s4 = Student(name: "Kavin", rollNumber: 104, marks: 35) {
    school.addStudent(s4)
}

school.printReport()
