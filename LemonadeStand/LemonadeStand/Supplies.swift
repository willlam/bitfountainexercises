//
//  Supplies.swift
//  LemonadeStand
//
//  Created by William Lam on 2015-05-14.
//  Copyright (c) 2015 William Lam. All rights reserved.
//

import Foundation

struct Supplies {
  var money = 0
  var lemons = 0
  var iceCubes = 0
  
  init (aMoney : Int, aLemons : Int, aIceCubes : Int) {
    money = aMoney
    lemons = aLemons
    iceCubes = aIceCubes
  }
}