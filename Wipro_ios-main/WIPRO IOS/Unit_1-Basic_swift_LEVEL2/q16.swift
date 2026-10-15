var n = 5

for i in 1...n {
    if i % 2 == 0 {
        continue
    }

    for j in 1...i {
        print("*", terminator: "")
    }
    print()
}