import UIKit

var cafeNames = ["Dineen Coffee", "Te Aro Coffee"]

cafeNames.append("Mercury Espresso Bar")

println(cafeNames)

// self explanatory - but note the round braces instead of square braces

// to add multiple instances in one time

cafeNames += ["Lit Espresso Bar", "Rooster Coffeehouse"]

//to replace and insert index position with another name

cafeNames[1] = "Pilot Coffee"
println(cafeNames)

// to replace multiple instances at a time using a range operator, replacing elements at index 0 through 2 with ones that you're indicating instead

cafeNames[0...2] = ["De Mello Palheta", "Starbucks", "Second Cup"]

println(cafeNames)

//to insert an element at a certain index

cafeNames.insert("Manic Coffee", atIndex: 2)
println(cafeNames)

//removing the last element in the cafeNames array

cafeNames.removeLast()
println(cafeNames)

//removing something at specific index position

cafeNames.removeAtIndex(1)
println(cafeNames)

// to wipe everything in your array

cafeNames.removeAll(keepCapacity: false)
println(cafeNames)
