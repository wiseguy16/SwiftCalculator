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
    var answer: String
    var answerNumber = 0.0
    var operatorType: String
    var hasOperatorBeenPicked: Bool
    
    init()
    {
        operand1 = ""
        operand2 = ""
        operatorType = "none"
        answer = ""
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
    
    func performTransactionIfPossible(whichOperatorType: String) -> String
    {
        number1 = Double(operand1)!
        number2 = Double(operand2)!
        
        switch whichOperatorType
        {
        case "+":
            answerNumber = number1 + number2
        case "-":
            answerNumber = number1 - number2
        case "*":
            answerNumber = number1 * number2
        case "÷":
            if number2 != 0
            {
            answerNumber = number1 / number2
            }
            else
            {
                answer = "Error"
            }
        default:
            break
        }
        if answer != "Error"
        {
        answer = String(format: "%g", answerNumber)
        }
        
        return answer
        
 
    }
    
    func clearTheBrain()
    {
        number1 = 0.0
        number2 = 0.0
        answerNumber = 0.0
        
        operand1 = ""
        operand2 = ""
        operatorType = "none"
        answer = ""
        hasOperatorBeenPicked = false

    }
}
