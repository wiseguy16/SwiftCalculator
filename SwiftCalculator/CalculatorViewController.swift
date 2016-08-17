//
//  CalculatorViewController.swift
//  SwiftCalculator
//
//  Created by Gregory Weiss on 8/16/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController
{
    
    @IBOutlet weak var displayLabel: UILabel!
    
    // *************** OUTLETS For Drawing Borders!! ********************
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var plusMinus: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var percent: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var times: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var sqrt: UIButton!
    @IBOutlet weak var decimal: UIButton!
    @IBOutlet weak var equals: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var four: UIButton!
    
    var theBrain = Brain()
    
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureView()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func operandTapped(_ sender: UIButton)
    {
        if displayLabel.text == "0"
        {
           displayLabel.text = ""
        }
        displayLabel.text = displayLabel.text! + "\(sender.currentTitle!)"
        
        if theBrain.hasOperatorBeenPicked == false
        {
            theBrain.operand1 = displayLabel.text!
        }
        else
        {
            theBrain.operand2 = displayLabel.text!
        }
        
    }
    
    @IBAction func unaryButtonTapped(_ sender: UIButton)
    {
        if theBrain.hasOperatorBeenPicked == false
        {
            theBrain.operand1 = displayLabel.text!
        }
        else
        {
            theBrain.operand2 = displayLabel.text!
        }
        
        let result = theBrain.performUnaryOperation(whichOperatorType: "\(sender.currentTitle!)")
         displayLabel.text = result
        
        print("Number 1 is \(theBrain.operand1)")
        print("Number 2 is \(theBrain.operand2)")
        
    }
    
    
    
    @IBAction func operatorTapped(_ sender: UIButton)
    {
        theBrain.hasOperatorBeenPicked = true
        theBrain.operatorType = sender.currentTitle!
        displayLabel.text = ""
        
    }
    
    @IBAction func performTransaction(_ sender: UIButton)
    {
        let result = theBrain.performTransactionIfPossible(whichOperatorType: theBrain.operatorType)
        displayLabel.text = result
        
        theBrain.operand1 = displayLabel.text!
        theBrain.operand2 = ""
      
        
    }
    
    @IBAction func clearTransaction(_ sender: UIButton)
    {
        theBrain.clearTheBrain()
        displayLabel.text = "0"
    }
    
    func configureView()
    {
        seven.layer.cornerRadius = 5
        seven.layer.borderWidth = 1
        seven.layer.borderColor = UIColor.black.cgColor
        six.layer.cornerRadius = 5
        six.layer.borderWidth = 1
        six.layer.borderColor = UIColor.black.cgColor
        one.layer.cornerRadius = 5
        one.layer.borderWidth = 1
        one.layer.borderColor = UIColor.black.cgColor
        two.layer.cornerRadius = 5
        two.layer.borderWidth = 1
        two.layer.borderColor = UIColor.black.cgColor
        three.layer.cornerRadius = 5
        three.layer.borderWidth = 1
        three.layer.borderColor = UIColor.black.cgColor
        four.layer.cornerRadius = 5
        four.layer.borderWidth = 1
        four.layer.borderColor = UIColor.black.cgColor
        five.layer.cornerRadius = 5
        five.layer.borderWidth = 1
        five.layer.borderColor = UIColor.black.cgColor
        eight.layer.cornerRadius = 5
        eight.layer.borderWidth = 1
        eight.layer.borderColor = UIColor.black.cgColor
        nine.layer.cornerRadius = 5
        nine.layer.borderWidth = 1
        nine.layer.borderColor = UIColor.black.cgColor
        decimal.layer.cornerRadius = 5
        decimal.layer.borderWidth = 1
        decimal.layer.borderColor = UIColor.black.cgColor
        plus.layer.cornerRadius = 5
        plus.layer.borderWidth = 1
        plus.layer.borderColor = UIColor.black.cgColor
        minus.layer.cornerRadius = 5
        minus.layer.borderWidth = 1
        minus.layer.borderColor = UIColor.black.cgColor
        divide.layer.cornerRadius = 5
        divide.layer.borderWidth = 1
        divide.layer.borderColor = UIColor.black.cgColor
        times.layer.cornerRadius = 5
        times.layer.borderWidth = 1
        times.layer.borderColor = UIColor.black.cgColor
        sqrt.layer.cornerRadius = 5
        sqrt.layer.borderWidth = 1
        sqrt.layer.borderColor = UIColor.black.cgColor
        percent.layer.cornerRadius = 5
        percent.layer.borderWidth = 1
        percent.layer.borderColor = UIColor.black.cgColor
        plusMinus.layer.cornerRadius = 5
        plusMinus.layer.borderWidth = 1
        plusMinus.layer.borderColor = UIColor.black.cgColor
        clear.layer.cornerRadius = 5
        clear.layer.borderWidth = 1
        clear.layer.borderColor = UIColor.black.cgColor
        zero.layer.cornerRadius = 5
        zero.layer.borderWidth = 1
        zero.layer.borderColor = UIColor.black.cgColor
        equals.layer.cornerRadius = 5
        equals.layer.borderWidth = 1
        equals.layer.borderColor = UIColor.black.cgColor
        displayLabel.text = "0"
        theBrain.operatorType = "none"
        
    }

    
}
