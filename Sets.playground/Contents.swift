import UIKit

var pastaTypesSet = Set<String>()
var pastaTypesArray = [String]()

pastaTypesSet.insert("Tagliatelle")
pastaTypesSet.insert("Fettuccine")
pastaTypesSet.insert("Spaghetti")
pastaTypesSet.insert("Linguine")
pastaTypesSet.insert("Fettuccine")

pastaTypesSet.remove("Spaghetti")

print(pastaTypesSet)
print(pastaTypesSet.count)

var pastaTypesSet2 = Set<String>()
pastaTypesSet2.insert("Tortellini")
pastaTypesSet2.insert("Ziti")
pastaTypesSet2.insert("Tagliatelle")
pastaTypesSet2.insert("Lasagna")

let pastaSetUnion = pastaTypesSet.union(pastaTypesSet2)
print(pastaSetUnion)
print(pastaSetUnion.count)


func isPrime(_ number: Int) -> Bool {
  if number == 1 { return false }
  if number == 2 || number == 3 { return true }
  for i in 2...Int(Double(number).squareRoot()) {
     if number % i == 0 { return false }
  }
  return true
}

let primes = (1...).lazy.filter { isPrime($0) }.prefix(10)
primes.forEach { print($0) }
