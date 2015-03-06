func printHelloWorld () {
  println("Hello world!")
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

printNumberSupplied(5)


// above is an example of passing a parameter to make a function more dynamic. Here you'll see that we're making "number" the parameter and assigning to an integer type, which will be passed onto the function


// as for multiple parameters, you can add a second (or more when you use a comma as seen below


func turnOffAppliance (applianceName: String, isOn: Bool) {
  if isOn == true  {
    println("Please turn off the \(applianceName)")
  } else {
    println("I turned the \(applianceName) off already.")
  }
}

turnOffAppliance ("Microwave", true)

// to show how a return value for a function works

func additionFunction (firstArgument: Int, secondArgument: Int) -> Int {
  
  let sumOfArguments = firstArgument + secondArgument
  
  return sumOfArguments
}


var additionAnswerofInteger = additionFunction(4, 4)

let finalAnswer = additionFunction(additionAnswerofInteger, 5)

println(finalAnswer)


func helloWorldString () -> String {
  printHelloWorld() // we're calling a function within a function.. note the console output!.. we have the Hello World and Hello Class from the previous function above and also the output helloWorldSTring combined with the variable hellWorld along with the exclamation marks!
  return "Hello World"
}

var helloWorld = helloWorldString() //this sets a variable helloWorld to be equal to the function helloWorldString that returns "Hello World" - so meta o_0
helloWorld = helloWorld + "!!"
println(helloWorld) // here we're printing a line that calls the helloWorld variable that we set above that adds the string of two exclamation marks.
