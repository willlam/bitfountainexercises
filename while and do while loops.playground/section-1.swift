import UIKit

var x = 5


//As soon as this argument is no longer true, the While loop will terminate. Notice that inside of the While loop we update the value of x. This way each time the while loop runs the value of x increases by 1. When x equals 10 the while loop terminates and the code continues. You need to be careful and ensure that there's a way to terminate the while loop.
while x < 10 {
  println(x)
  x++
}

var y = 10

do {
  println(y)
y--
} while y > 0

// can be approached either way depending on how a developer wants to approach or phrase their loop