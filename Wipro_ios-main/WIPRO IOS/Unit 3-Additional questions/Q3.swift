
struct BoxValue {
    var size: Int
}

class Box {
    var size: Int

    init(size: Int) {
        self.size = size
    }
}

// Incorrect example — uncomment to see the compile error:
// let valueBox = BoxValue(size: 10)
// valueBox.size = 20

// Fix: use var when changing a struct's property
var valueBox = BoxValue(size: 10)
valueBox.size = 20

print("Struct box size:", valueBox.size)

// Class example
let box1 = Box(size: 10)
let box2 = box1

box2.size = 20

print("Box 1 size:", box1.size)
print("Box 2 size:", box2.size)

// Identity operator checks whether both references
// point to the same class instance.
print("Same object:", box1 === box2)
