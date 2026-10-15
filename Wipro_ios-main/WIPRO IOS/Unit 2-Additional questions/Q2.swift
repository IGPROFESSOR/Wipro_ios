
import Foundation

let sentence = "swift is fun and swift is fast"

// Split the sentence into words
let words = sentence.split(separator: " ").map { String($0) }

// (a) Number of words
print("Number of words:", words.count)

// (b) Unique words
let uniqueWords = Set(words)
print("Unique words:", uniqueWords.sorted())

// (c) Count the frequency of each word
var frequency: [String: Int] = [:]

for word in words {
    frequency[word, default: 0] += 1
}

print("\nWord Frequencies:")

for word in frequency.keys.sorted() {
    print("\(word): \(frequency[word]!)")
}

// (d) Rank words by frequency, ties broken alphabetically
let rankedWords = frequency.sorted {
    if $0.value != $1.value {
        return $0.value > $1.value
    }
    return $0.key < $1.key
}

print("\nWords Ranked by Frequency:")

for (word, count) in rankedWords {
    print("\(word): \(count)")
}
