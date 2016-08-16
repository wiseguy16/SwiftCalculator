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
    var operand2: String
    var operatorType: String
    var hasOperatorBeenPicked: Bool
    
    init()
    {
        operand1 = ""
        operand2 = ""
        operatorType = "none"
        hasOperatorBeenPicked = false
    }
}
