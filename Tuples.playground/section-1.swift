// Tuples allow us to store multiple types of information in a grouping. Can incorporate switch statements, as a return value for functions.. return multiple pieces of information. etc.

import UIKit

var myTuple = ("Tigger", "Bengal", 3)

let name = myTuple.0

var secondTigerTuple = (name: "Tigress", breed: "Indochinese Tiger", age: 2)

let age = secondTigerTuple.age

// can use switch statements to quickly test something is within a tuple

switch secondTigerTuple {
case ("Tigress" , "Malayan", 2):
  println("first case is true")
case (_, "Indochinese Tiger", _):
  println("second case is true")
default:
  println("Default is occuring")
}