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
        guard let url = URL(string: requestURL) else {return}
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        print("data", data)
        print("response", response)
        print("error", error)
        guard let dataResponse = data,
                  error == nil else {
                  print(error?.localizedDescription ?? "Response Error")
                  return }
            do{
                //here dataResponse received from a network request
                let jsonResponse = try JSONSerialization.jsonObject(with:
                                       dataResponse, options: [])
                let result = jsonResponse as! [String : Any]
                print("result", result)
                
                let jsonDict = result["frames"]
                print("jsonDict", jsonDict)
                
                completion(result as! [String:Double]) //Response result
             } catch let parsingError {
                print("Error", parsingError)
           }
        }
        task.resume()
    }
}
