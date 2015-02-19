import UIKit

var cafeNames = ["Dineen Coffee", "Te Aro Coffee", "Crema Coffee", "Lit Espresso Bar", "Mercury Espresso Bar"]

for cafeName in cafeNames {
  println(cafeName)
}

// in a For-In Loop what happens here is for the variable cafeName, it goes into array cafeNames and prints out each instance in the array within the curly braces and assigns it to cafeName

for x in 1...3 {
  println(x)
}

// for a range loop, within the range that you declare (in this case 1 to 3), the loop will iterate over teh range that you declare and assign it to the variable x and print each instance of that range

for (index, cafeName) in enumerate(cafeNames) {
  println("index: \(index) cafeName: \(cafeName)")
}

// for in enumerate loop access both the index of the array and prints out the elements in the cafeNames array