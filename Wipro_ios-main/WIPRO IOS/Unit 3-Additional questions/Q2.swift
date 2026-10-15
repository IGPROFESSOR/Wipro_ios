
import Foundation

// Part 1: Shape enum with associated values
enum Shape {
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
    case triangle(base: Double, height: Double)

    var area: Double {
        switch self {
        case .circle(let radius):
            return Double.pi * radius * radius

        case .rectangle(let width, let height):
            return width * height

        case .triangle(let base, let height):
            return 0.5 * base * height
        }
    }
}

let circle = Shape.circle(radius: 5)
let rectangleShape = Shape.rectangle(width: 10, height: 5)
let triangle = Shape.triangle(base: 8, height: 6)

print("Circle Area:", circle.area)
print("Rectangle Area:", rectangleShape.area)
print("Triangle Area:", triangle.area)

// Part 2: Rectangle struct
struct Rectangle {
    var width: Double
    var height: Double

    var perimeter: Double {
        return 2 * (width + height)
    }

    mutating func scale(by factor: Double) {
        width *= factor
        height *= factor
    }
}

var original = Rectangle(width: 10, height: 5)
var copy = original

copy.scale(by: 2)

print("Original Width:", original.width)
print("Original Height:", original.height)
print("Original Perimeter:", original.perimeter)

print("Copy Width:", copy.width)
print("Copy Height:", copy.height)
print("Copy Perimeter:", copy.perimeter)
