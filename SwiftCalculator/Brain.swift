//
//  Brain.swift
//  SwiftCalculator
//
//  Created by Gregory Weiss on 8/16/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

import Foundation

class Brain
{
    var operand1 : String
    var number1 = 0.0
    var operand2: String
    var number2 = 0.0
    var operatorType: String
    var hasOperatorBeenPicked: Bool
    
    init()
    {
        operand1 = ""
        operand2 = ""
        operatorType = "none"
        hasOperatorBeenPicked = false
    }
    
    func setTheOperatorType(whichOperatorType: String)
    {
        
        switch whichOperatorType
        {
        case "+":
            number1 = number2
            
        default:
            break
        }
        
    }
    
    func performTransactionIfPossible()
    {
        
    }
}
