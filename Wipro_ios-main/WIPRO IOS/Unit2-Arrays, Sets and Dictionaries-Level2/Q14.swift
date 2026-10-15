let students = [
    "Arun": 85,
    "Bala": 90,
    "Charan": 78,
    "Divya": 95,
    "Priya": 88
]

let sortedStudents = students.sorted { $0.value > $1.value }

print("Top 3 Students:")

for student in sortedStudents.prefix(3) {
    print("\(student.key): \(student.value)")
}