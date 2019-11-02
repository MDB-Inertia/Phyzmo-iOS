//
//  APIClient.swift
//  Phyzmo
//
//  Created by Patrick Yin on 11/2/19.
//  Copyright © 2019 Patrick Yin. All rights reserved.
//

import Foundation
import UIKit

class APIClient {
    func getPositionCV(completion: @escaping ([String:Any]) -> ()) {
        let requestURL = "https://us-central1-phyzmo.cloudfunctions.net/position-cv?uri=gs://phyzmo-videos/slowed_video.mp4"
        
    }
}
