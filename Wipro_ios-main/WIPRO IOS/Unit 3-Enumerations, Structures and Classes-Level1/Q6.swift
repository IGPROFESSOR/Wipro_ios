class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func introduce() {
        print("Hi, my name is \(name) and I am \(age) years old.")
    }
}

let person1 = Person(name: "Saran", age: 21)

person1.introduce()