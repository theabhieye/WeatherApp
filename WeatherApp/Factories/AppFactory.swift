//
//  AppFactory.swift
//  WeatherApp
//
//  Created by Abhishek kapoor on 03/05/22.
//

import Foundation
import UIKit
struct AppFactory {
    
    static private let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    //MARK: View Controllers
    static var weatherVC:WeatherMapVC {
        get {
            return mainStoryboard.instantiateViewController(withIdentifier: String(describing: WeatherMapVC.self)) as! WeatherMapVC
        }
    }
    
    static var showRecentVC:ShowRecentViewedListVC {
        get {
            return mainStoryboard.instantiateViewController(withIdentifier: String(describing: ShowRecentViewedListVC.self)) as! ShowRecentViewedListVC
        }
    }
    
    static var showTempDetailVC:ShowTempDetailVC {
        get {
            return mainStoryboard.instantiateViewController(withIdentifier: String(describing: ShowTempDetailVC.self)) as! ShowTempDetailVC
        }
    }
    
}
