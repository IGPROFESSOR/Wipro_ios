var fruits = ["Apple", "Mango", "Orange", "Grapes", "Banana"]

print("Original:", fruits)

fruits.append("Pineapple")
print("After append:", fruits)

fruits.insert("Strawberry", at: 0)
print("After insert:", fruits)

fruits.remove(at: 2)
print("After remove:", fruits)