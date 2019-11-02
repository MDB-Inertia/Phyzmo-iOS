//
//  Position.swift
//  Phyzmo
//
//  Created by Patrick Yin on 11/2/19.
//  Copyright © 2019 Patrick Yin. All rights reserved.
//

import Foundation
import UIKit

class Position {
    let time: Double!
    let left: Double!
    let top: Double!
    let right: Double!
    let bottom: Double!
    
    init(time: Double, left: Double, top: Double, right: Double, bottom: Double) {
        self.time = time
        self.left = left
        self.top = top
        self.right = right
        self.bottom = bottom
    }
}
