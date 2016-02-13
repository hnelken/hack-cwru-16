//
//  WebInterface.swift
//  scuttle
//
//  Created by Harry Nelken on 2/13/16.
//  Copyright © 2016 HackCWRU. All rights reserved.
//

import UIKit
import Alamofire

class WebInterface: NSObject {
    
    func doStuff() {
        Alamofire.request(.POST, "http://URLGOESHERE")
        
        let parameters = [
            "foo": [1,2,3],
            "bar": [
                "baz": "qux"
            ]
        ]
        
        Alamofire.request(.POST, "https://httpbin.org/post", parameters: parameters, encoding: .JSON)
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .response { response in
                print(response)
        }
        
        
    }

}
