//  ViewController.swift
//  ComplexJSONParsingByJSONSerialization
//  Created by Ranjeet Raushan on 16/11/20.
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // call json Method
        self.setJsonData()
    }
    func setJsonData(){
        let url = Bundle.main.url(forResource: "jsonexample", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let JSON = try! JSONSerialization.jsonObject(with: data, options: [])
        print(JSON)
        // Mark:- JSON Serialization
        /* JSON Serialization - starts here */
        if let jsonDict = JSON as? [String: Any] {
            print(jsonDict)
            if let jsonDict1 = jsonDict["data"] as? [String: Any] {
                print(jsonDict1)
                if let jsonArray = jsonDict1["connections"] as? [[String: Any]] {
                    print(jsonArray)
                    if let jsonArrayDict = jsonArray[0] as? [String: Any] {
                        print(jsonArrayDict)
                    }
                }
            }
        }
        /* JSON Serialization - ends here */
   }
}

