let students = [
    "Arun": 85,
    "Bala": 90,
    "Charan": 78,
    "Divya": 95,
    "Priya": 88
]

let name = "Divya"

if let mark = students[name] {
    print("Mark:", mark)
} else {
    print("Not found")
}