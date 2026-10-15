let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [4, 5, 6, 7, 8]

print("Union:", setA.union(setB))
print("Intersection:", setA.intersection(setB))
print("Subtracting:", setA.subtracting(setB))
print("Symmetric Difference:", setA.symmetricDifference(setB))