//
//  Video.swift
//  Phyzmo
//
//  Created by Patrick Yin on 11/2/19.
//  Copyright © 2019 Patrick Yin. All rights reserved.
//

import Foundation
import UIKit

class Video {
    var title: String!
    var positionList: [Position]!
    
    init(title: String, positionList: [Position]) {
        self.title = title
        self.positionList = positionList
    }
    
    init?(json: [[String:Double]]) {
        positionList = []
        for position in json {
            positionList.append(Position(time: position["time"]!, left: position["left"]!, top: position["top"]!, right: position["right"]!, bottom: position["bottom"]!))
        }
    }
}
