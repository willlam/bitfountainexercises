func printHelloWorld () {
  println("Hello world")
  println("Hello Class")
}

printHelloWorld()
// whatever is in the curly braces, will be executed if you call the function 

func printNumberSupplied(number : Int) {
  println("The number \(number)")
  println("The number times 3 is \(number * 3)")
  var numberTimesTwo = number * 2
  numberTimesTwo *= 2
}

// above is an example of passing a parameter to make a function more dynamic. Here you'll see that we're making "number" the parameter and assigning to an integer type, which will be passed onto the function


// as for multiple parameters, you can add a second (or more when you use a comma as seen below
