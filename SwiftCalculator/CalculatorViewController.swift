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
        

        // Do any additional setup after loading the view.
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
    
    @IBAction func operatorTapped(_ sender: UIButton)
    {
        theBrain.hasOperatorBeenPicked = true
        theBrain.operatorType = sender.currentTitle!
        displayLabel.text = ""
        
    }
    
    @IBAction func performTransaction(_ sender: UIButton)
    {
        
    }
    
    @IBAction func clearTransaction(_ sender: UIButton)
    {
        
        print(theBrain.operand1)
        print(theBrain.operand2)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
