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
    var isThisUnaryOperator: Bool
    
    init()
    {
        operand1 = ""
        operand2 = ""
        operatorType = "none"
        answer = ""
        hasOperatorBeenPicked = false
        isThisUnaryOperator = false
    }
    
    func checkTheOperator(whichOperatorType: String) -> String  // **********  Fix this section!!!!  **************
    {
            switch whichOperatorType
          {
            case "√":
            
            if hasOperatorBeenPicked == false
            {
                if number1 > 0
                {
                    answerNumber = sqrt(number1)
                    number1 = answerNumber
                }
                else
                {
                    answer = "Error"
                }
            }
            else
            {
                if number2 > 0
                {
                    answerNumber = sqrt(number2)
                    number2 = answerNumber
                }
                else
                {
                    answer = "Error"
                }
            }
            case "%":
            if hasOperatorBeenPicked == false
            {
                answerNumber = number1 / 100
                number1 = answerNumber
            }
            else
            {
                answerNumber = number2 / 100
                number2 = answerNumber
            }
            
            case "+/-":
            if hasOperatorBeenPicked == false
            {
                answerNumber = number1 * -1
                number1 = answerNumber
            }
            else
            {
                answerNumber = number1 * -1
                number2 = answerNumber
            }
            default:
                answer = ""
                
          }
        if answer != "Error" && answer != ""
        {
            answer = String(format: "%g", answerNumber)
        }
        
        return answer

    }
    
    func setTheOperatorType(whichOperatorType: String)
    {
        
        switch whichOperatorType
        {
        case "√":
            answerNumber = number1 + number2
        case "%":
            answerNumber = number1 + number2
        case "+/-":
            answerNumber = number1 + number2
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
        isThisUnaryOperator = false

    }
}
