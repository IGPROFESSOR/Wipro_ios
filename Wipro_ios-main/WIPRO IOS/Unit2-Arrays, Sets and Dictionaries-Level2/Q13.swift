let sentence = "to be or not to be"
let words = sentence.split(separator: " ")
var frequency: [String: Int] = [:]

for word in words {
    let key = String(word)
    frequency[key, default: 0] += 1
}

print(frequency)