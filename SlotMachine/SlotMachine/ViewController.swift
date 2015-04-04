//
//  ViewController.swift
//  SlotMachine
//
//  Created by William Lam on 2015-04-01.
//  Copyright (c) 2015 William Lam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  // learn about implicit unwrapped optionals on Stack Overflow - we need this exclamation point because we'll be using this container every time we load up our view
  var firstContainer: UIView!
  var secondContainer: UIView!
  var thirdContainer: UIView!
  var fourthContainer: UIView!
  
  
  // the k in kMarginForView denoates that it's a constant
  let kMarginForView: CGFloat = 10.0
  let kSixth: CGFloat = 1.0/6.0

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.setUpContainerViews()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  //helper function to abstract away some logic from ViewDidLoad
  
  func setUpContainerViews (){
    self.firstContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: self.view.bounds.origin.y, width: self.view.bounds.width - (kMarginForView*2), height: self.view.bounds.height*kSixth))
    self.firstContainer.backgroundColor = UIColor.redColor()
    self.view.addSubview(self.firstContainer)
  }

}

