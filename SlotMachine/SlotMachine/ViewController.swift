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
  
  var titleLabel: UILabel!
  
  // Information Labels
  
  // the k in kMarginForView denoates that it's a constant
  var creditsLabel: UILabel!
  var betLabel: UILabel!
  var winnerPaidLabel: UILabel!
  var creditsTitleLabel: UILabel!
  var betTitleLabel: UILabel!
  var winnerPaidTitleLabel: UILabel!
  
  // buttons in the fourth container
  
  var resetButton: UIButton!
  var betOneButton: UIButton!
  var betMaxButton: UIButton!
  var spinButton: UIButton!
  
  // Slots Array
  
  var slots: [[Slot]] = []
  
  
  let kMarginForView: CGFloat = 10.0
  let kMarginForSlot: CGFloat = 2.0
  
  let kSixth: CGFloat = 1.0/6.0
  let kThird: CGFloat = 1.0/3.0
  let kHalf: CGFloat = 1.0/2.0
  let kEighth: CGFloat = 1.0/8.0


  let kNumberOfContainers = 3
  let kNumberOfSlots = 3
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.setupContainerViews()
    
    // need to let setup the container views first before working with individual containers and drawing into them.
    setupFirstContainer(self.firstContainer)
    setupSecondContainer(self.secondContainer)
    setupThirdContainer(self.thirdContainer)
    setupFourthContainer(self.fourthContainer)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    
  
  }
  
  // IBAction - for UIButton in fourth container below
  
  
  func resetButtonPressed (button: UIButton) {
    println("resetButtonPressed")
  }
  
  func betOneButtonPressed (button: UIButton) {
    println(button)
  }
  
  func betMaxButtonPress (button: UIButton) {
    
  }
  
  // creates a new slot every time we hit the Spin button and override old array of slots and generating a whole new set of image views to show off the new slot instances we're recreating
  
  func spinButtonPressed (button: UIButton) {
    slots = Factory.createSlots()
    setupSecondContainer(self.secondContainer)
  }
  

  //helper function to abstract away some logic from ViewDidLoad
  
  func setupContainerViews (){
    self.firstContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: self.view.bounds.origin.y, width: self.view.bounds.width - (kMarginForView*2), height: self.view.bounds.height*kSixth))
    self.firstContainer.backgroundColor = UIColor.redColor()
    self.view.addSubview(self.firstContainer)
    
    self.secondContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height, width: self.view.bounds.width - (kMarginForView*2), height: self.view.bounds.height*(3*kSixth)))
    self.secondContainer.backgroundColor = UIColor.blackColor()
    self.view.addSubview(self.secondContainer)
    
    self.thirdContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height + secondContainer.frame.height, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * kSixth))
    self.thirdContainer.backgroundColor = UIColor.greenColor()
    self.view.addSubview(self.thirdContainer)
    
    self.fourthContainer = UIView(frame: CGRect(x: self.view.bounds.origin.x + kMarginForView, y: firstContainer.frame.height + secondContainer.frame.height + thirdContainer.frame.height, width: self.view.bounds.width - (kMarginForView * 2), height: self.view.bounds.height * kSixth))
    self.fourthContainer.backgroundColor = UIColor.blueColor()
    self.view.addSubview(self.fourthContainer)
  }
  
  func setupFirstContainer(containerView: UIView) {
    self.titleLabel = UILabel()
    self.titleLabel.text = "Super Slots"
    self.titleLabel.textColor = UIColor.yellowColor()
    self.titleLabel.font = UIFont(name: "MarkerFelt-Wide", size: 40)
    self.titleLabel.sizeToFit()
    self.titleLabel.center = containerView.center
    containerView.addSubview(self.titleLabel)
  }
  
  func setupSecondContainer(containerView: UIView) {
    for var containerNumber = 0; containerNumber < kNumberOfContainers; ++containerNumber {
      for var slotNumber = 0; slotNumber < kNumberOfSlots; ++slotNumber {
        
        var slot:Slot
        var slotImageView = UIImageView()
        
        if slots.count != 0 {
          let slotContainer =  slots[containerNumber]
          slot = slotContainer[slotNumber]
          slotImageView.image = slot.image
        }
        else {
          slotImageView.image = UIImage(named: "Ace")
        }
        slotImageView.backgroundColor = UIColor.yellowColor()
        slotImageView.frame = CGRect(x: containerView.bounds.origin.x + (containerView.bounds.size.width * CGFloat(containerNumber) * kThird), y: containerView.bounds.origin.y + (containerView.bounds.size.height * CGFloat(slotNumber) * kThird), width: containerView.bounds.width * kThird - kMarginForSlot, height: containerView.bounds.height * kThird - kMarginForSlot)
        containerView.addSubview(slotImageView)
      }
    }
    
  }
  
  func setupThirdContainer(containerView: UIView) {
    
    self.creditsLabel = UILabel()
    self.creditsLabel.text = "000000"
    self.creditsLabel.textColor = UIColor.redColor()
    self.creditsLabel.font = UIFont(name: "Menlo-Bold", size: 16)
    self.creditsLabel.sizeToFit()
    
    // the center code isn't re-used because we don't want our labels to be stacked on top of one another
    self.creditsLabel.center = CGPoint(x: containerView.frame.width * kSixth, y: containerView.frame.height * kThird)
    self.creditsLabel.textAlignment = NSTextAlignment.Center
    self.creditsLabel.backgroundColor = UIColor.darkGrayColor()
    containerView.addSubview(self.creditsLabel)
    
    self.betLabel = UILabel()
    self.betLabel.text = "0000"
    self.betLabel.textColor = UIColor.redColor()
    self.betLabel.font = UIFont(name: "Menlo-Bold", size: 16)
    self.betLabel.sizeToFit()
    // moved over to the right
    self.betLabel.center = CGPoint(x: containerView.frame.width * kSixth * 3, y: containerView.frame.height * kThird)
    self.betLabel.textAlignment = NSTextAlignment.Center
    self.betLabel.backgroundColor = UIColor.darkGrayColor()
    containerView.addSubview(self.betLabel)
    
    self.winnerPaidLabel = UILabel()
    self.winnerPaidLabel.text = "000000"
    self.winnerPaidLabel.textColor = UIColor.redColor()
    self.winnerPaidLabel.font = UIFont(name: "Menlo-Bold", size: 16)
    self.winnerPaidLabel.sizeToFit()
    
    // moving the winnerPaidLabel more to the right
    self.winnerPaidLabel.center = CGPoint(x: containerView.frame.width * kSixth * 5, y: containerView.frame.height * kThird)
    self.winnerPaidLabel.textAlignment = NSTextAlignment.Center
    self.winnerPaidLabel.backgroundColor = UIColor.darkGrayColor()
    containerView.addSubview(self.winnerPaidLabel)
    
    self.creditsTitleLabel = UILabel()
    self.creditsTitleLabel.text = "Credits"
    self.creditsTitleLabel.textColor = UIColor.blackColor()
    self.creditsTitleLabel.font = UIFont(name: "AmericanTypewriter", size: 14)
    self.creditsTitleLabel.sizeToFit()
    self.creditsTitleLabel.center = CGPoint(x: containerView.frame.width * kSixth, y: containerView.frame.height * kThird * 2)
    containerView.addSubview(self.creditsTitleLabel)
    
    self.betTitleLabel = UILabel()
    self.betTitleLabel.text = "Bet"
    self.betTitleLabel.textColor = UIColor.blackColor()
    self.betTitleLabel.font = UIFont(name: "AmericanTypewriter", size: 14)
    self.betTitleLabel.sizeToFit()
    self.betTitleLabel.center = CGPoint(x: containerView.frame.width * kSixth * 3, y: containerView.frame.height * kThird * 2)
    containerView.addSubview(self.betTitleLabel)
    
    self.winnerPaidTitleLabel = UILabel()
    self.winnerPaidTitleLabel.text = "Winner Paid"
    self.winnerPaidTitleLabel.textColor = UIColor.blackColor()
    self.winnerPaidTitleLabel.font = UIFont(name: "AmericanTypewriter", size: 14)
    self.winnerPaidTitleLabel.sizeToFit()
    self.winnerPaidTitleLabel.center = CGPoint(x: containerView.frame.width * 5 * kSixth, y: containerView.frame.height * 2 * kThird)
    containerView.addSubview(self.winnerPaidTitleLabel)
    
  }
  
  func setupFourthContainer (containerView: UIView) {
    self.resetButton = UIButton()
    self.resetButton.setTitle("Reset", forState: UIControlState.Normal)
    self.resetButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
    self.resetButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 12)
    // ? is saying does this attribute necessarily exist at this point? memory issue
    self.resetButton.backgroundColor = UIColor.lightGrayColor()
    self.resetButton.sizeToFit()
    self.resetButton.center = CGPoint(x: containerView.frame.width * kEighth, y: containerView.frame.height * kHalf)
    self.resetButton.addTarget(self, action: "resetButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
    containerView.addSubview(self.resetButton)
    
    // by adding a colon (:) in the addTarget, which is for the argument or parameter that we pass in, you're allowing to add one or more parameters
    
    self.betOneButton = UIButton()
    self.betOneButton.setTitle("Reset", forState: UIControlState.Normal)
    self.betOneButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
    self.betOneButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 12)
    self.betOneButton.backgroundColor = UIColor.greenColor()
    self.betOneButton.sizeToFit()
    self.betOneButton.center = CGPoint(x: containerView.frame.width * 3 * kEighth, y: containerView.frame.height * kHalf)
    self.betOneButton.addTarget(self, action: "betOneButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
    containerView.addSubview(self.betOneButton)
    
    self.betMaxButton = UIButton()
    self.betMaxButton.setTitle("BetMax", forState: UIControlState.Normal)
    self.betMaxButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
    self.betMaxButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 12)
    self.betMaxButton.backgroundColor = UIColor.redColor()
    self.betMaxButton.sizeToFit()
    self.betMaxButton.center = CGPoint(x: containerView.frame.width * 5 * kEighth, y: containerView.frame.height * kHalf)
    self.betMaxButton.addTarget(self, action: "betMaxButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
    containerView.addSubview(self.betMaxButton)
    
    self.spinButton = UIButton()
    self.spinButton.setTitle("Spin", forState: UIControlState.Normal)
    self.spinButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
    self.spinButton.titleLabel?.font = UIFont(name: "Superclarendon-Bold", size: 12)
    self.spinButton.backgroundColor = UIColor.greenColor()
    self.spinButton.sizeToFit()
    self.spinButton.center = CGPoint(x: containerView.frame.width * 7 * kEighth, y: containerView.frame.height * kHalf)
    self.spinButton.addTarget(self, action: "spinButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
    containerView.addSubview(self.spinButton)
    
    
  }
  
}

