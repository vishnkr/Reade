//
//  NewsPreferencesViewController.swift
//  Reade
//
//  Created by Vishwa Shankar on 7/10/19.
//  Copyright © 2019 Vishwa Shankar. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

var newsTopics = ["Tech","Sports","Science","Health"]

let API_KEY = "Enter your News API Key"


class NewsPreferencesViewController: UIViewController{
   
    @IBOutlet var getDataButton: UIButton!
    
    @IBAction func getData(_ sender: Any) {
        Alamofire.request("https://newsapi.org/v2/everything?q=bitcoin&sortBy=publishedAt&apiKey=\(API_KEY)").responseData { (resData) -> Void in
            print(resData.result.value!)
            let strOutput = String(data : resData.result.value!, encoding : String.Encoding.utf8)
            print(strOutput!)

    }
    }
    
    
}
