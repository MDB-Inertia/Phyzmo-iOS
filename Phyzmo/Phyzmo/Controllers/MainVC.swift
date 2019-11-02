//
//  ViewController.swift
//  Phyzmo
//
//  Created by Patrick Yin on 11/2/19.
//  Copyright © 2019 Patrick Yin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var jsonResponse: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APIClient.getPositionCV() {positionData in
            DispatchQueue.main.async {
                print(positionData)
            }
        }
    }
}

