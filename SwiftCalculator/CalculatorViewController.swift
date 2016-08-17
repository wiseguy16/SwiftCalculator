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
    
    var theBrain = Brain()
    
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        displayLabel.text = "0"
        theBrain.operatorType = "none"
        
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
    
}
