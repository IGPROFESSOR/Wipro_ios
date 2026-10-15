let names = ["Arun", "Anu", "Bala", "Bharath", "Charan", "Chitra"]

var groupedNames: [Character: [String]] = [:]

for name in names {
    let firstLetter = name.first!

    groupedNames[firstLetter, default: []].append(name)
}

print(groupedNames)