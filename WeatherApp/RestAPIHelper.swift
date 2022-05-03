//
//  RestAPIHelper.swift
//  WeatherApp
//
//  Created by Abhishek kapoor on 03/05/22.
//

import Foundation

class RestAPIHelper:NetworkManager {

    
    func getWetherDetail(for url:String,lat:Double,long:Double,completion: ((WeatherData?, Error?) -> Void)?) {
        var dict = Dictionary<String,String>()
        dict["lat"] = "\(lat)"
        dict["lon"] = "\(long)"
        let req = super.createRequest(for: url, param: dict)
        super.executeRequest(request: req!, completion: completion)
        
    }
    
}
