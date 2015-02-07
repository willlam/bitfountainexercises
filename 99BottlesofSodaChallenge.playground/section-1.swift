// 99 Bottles of Soda Challenge
// Exercise was to challenge our understanding of for loops and control flow

import UIKit

for var sodas = 99; sodas >= 0; sodas-- {
  if sodas == 0 {
    println("there are no more bottles of soda on the wall")
  } else if sodas == 1 {
    println("there is one last bottle of soda on the wall")
    // added this line to make it sound more human
  } else {
    println("there are \(sodas) bottles of soda on the wall")
  }
  
}