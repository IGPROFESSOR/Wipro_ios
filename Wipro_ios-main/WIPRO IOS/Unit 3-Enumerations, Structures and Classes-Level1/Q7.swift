class Car {
    var brand: String
    var speed: Int

    init(brand: String, speed: Int) {
        self.brand = brand
        self.speed = speed
    }

    func accelerate() {
        speed += 20
        print("Accelerating. Current speed:", speed)
    }

    func brake() {
        speed -= 10

        if speed < 0 {
            speed = 0
        }

        print("Braking. Current speed:", speed)
    }
}

let car1 = Car(brand: "Toyota", speed: 40)

print("Brand:", car1.brand)
print("Initial speed:", car1.speed)

car1.accelerate()
car1.brake()