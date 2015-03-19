//
//  ViewController.swift
//  99Balloons
//
//  Created by William Lam on 2015-03-10.
//  Copyright (c) 2015 William Lam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var balloonsLabel: UILabel!
  @IBOutlet weak var backgroundImageView: UIImageView!
  
  var balloons:[Balloon] = []
  var currentIndex = 0 // so you don't get the same images over and over again. Please see func nextBalloonBarButtonItemPressed

  override func viewDidLoad() {
    super.viewDidLoad()
    self.createBalloons()
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func nextBalloonBarButtonItemPressed(sender: UIBarButtonItem) {
    let balloon = balloons[currentIndex]
    balloonsLabel.text = "\(balloon.number) balloon" // insert an if / else / switch statement here to take into account plural cases?  Also is balloon.number being taken from func createBalloons????
    backgroundImageView.image = balloon.image
    
    currentIndex += 1 //each time button is pressed, add one to the current index
  }

  
  
  func createBalloons () {
    for var balloonCount = 0; balloonCount <= 99; ++balloonCount {
        var balloon = Balloon() // refers to Balloon struct in Balloon.swift file
        balloon.number = balloonCount
        
        let randomNumber = Int(arc4random_uniform(UInt32(4)))
      
      switch randomNumber {
      case 1:
        balloon.image = UIImage(named: "RedBalloon1.jpg")
      case 2:
        balloon.image = UIImage(named: "RedBalloon2.jpg")
      case 3:
        balloon.image = UIImage(named: "RedBalloon3.jpg")
      default:
        balloon.image = UIImage(named: "RedBalloon4.jpg")
      }
      
      self.balloons.append(balloon)
        
    }
  }
  
  
}

