//
//  DiceService.swift
//  Dicee
//
//  Created by Breno Rezende on 16/07/19.
//  Copyright © 2019 Brezende. All rights reserved.
//

import Foundation

struct DiceService {
    
    let roll: (ClosedRange<Int>) -> Dice = { Dice(face: Int.random(in: $0)) }
        
}
