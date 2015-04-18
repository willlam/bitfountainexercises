//
//  Factory.swift
//  SlotMachine
//
//  Created by William Lam on 2015-04-14.
//  Copyright (c) 2015 William Lam. All rights reserved.
//
//
import Foundation
import UIKit

//class Factory {
  // class function we call on factory class - in an instance function we call an instance of a factory
class Factory {
  class func createSlots () -> [[Slot]] {
    
    let kNumberOfSlots = 3
    let kNumberOfContainers = 3
    var slots: [[Slot]] = []
    for var containerNumber = 0; containerNumber < kNumberOfContainers; ++containerNumber {
      var slotArray:[Slot] = []
      for var slotNumber = 0; slotNumber < kNumberOfSlots; ++slotNumber {
        var slot = Slot(value: 0, image: UIImage(named: ""), isRed: true)
        slotArray.append(slot)
      }
      slots.append(slotArray)
    }
    return slots
  }
  // another class function in order to create slot instances, where you don't want the same card showing up in the same array, but it could appear in another array
  
  class func createSlot (currentCards: [Slot]) -> Slot {
    var currentCardValues:[Int] = []
    // we'll then want to pull out the currentCardValues out of hte currentCards array
    
    for slot in currentCards {
      currentCardValues.append(slot.value)
    }
    
    var randomNumber = Int(arc4random_uniform(UInt32(13)))
    while contains(currentCardValues, randomNumber + 1) {
      randomNumber = Int(arc4random_uniform(UInt32(13)))
    }
   
    var slot:Slot
    
    switch randomNumber {
    case 0:
      slot = Slot(value: 1, image: UIImage(named: "Ace"), isRed: true)
    case 1:
      slot = Slot(value: 2, image: UIImage(named: "Two"), isRed: true)
    case 2:
      slot = Slot(value: 3, image: UIImage(named: "Three"), isRed: true)
    case 3:
      slot = Slot(value: 4, image: UIImage(named: "Four"), isRed: true)
    case 4:
      slot = Slot(value: 5, image: UIImage(named: "Five"), isRed: false)
    case 5:
      slot = Slot(value: 6, image: UIImage(named: "Six"), isRed: false)
    case 6:
      slot = Slot(value: 7, image: UIImage(named: "Seven"), isRed: true)
    case 7:
      slot = Slot(value: 8, image: UIImage(named: "Eight"), isRed: false)
    case 8:
      slot = Slot(value: 9, image: UIImage(named: "Nine"), isRed: false)
    case 9:
      slot = Slot(value: 10, image: UIImage(named: "Ten"), isRed: true)
    case 10:
      slot = Slot(value: 11, image: UIImage(named: "Jack"), isRed: false)
    case 11:
      slot = Slot(value: 12, image: UIImage(named: "Queen"), isRed: false)
    case 12:
      slot = Slot(value: 13, image: UIImage(named: "King"), isRed: true)
    default:
      slot = Slot(value: 0, image: UIImage(named: "Ace"), isRed: true)
    }
    return slot
  }
}