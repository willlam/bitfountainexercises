
import UIKit

var tigerNames = ["Tigger", "Tygra", "Tigster", "Spar"]
var tigerAges = [3, 2, 4, 5]

var emptyArray:[String] = []

if emptyArray.isEmpty {
  println("There are no elements in my array")
}
else {
  println("there are elements in this array")
}

println(tigerNames.count)
println(emptyArray.count)

let firstNameFromArray = tigerNames[0]
let secondAgeinTigerAgesArray = tigerAges[1]

for var i = 0 i < tigerNames.count; i++ {
  let instanceFromArray = tigerNames[i]
  println(instanceFromArray)
}

