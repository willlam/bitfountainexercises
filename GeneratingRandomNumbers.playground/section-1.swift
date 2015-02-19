import UIKit

//changing the parameter in the brackets (in this case 99) would generate a random number within the range of 0-98
let randomNumber = Int(arc4random_uniform(UInt32(99)))
println(randomNumber)
