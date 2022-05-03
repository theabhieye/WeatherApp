//
//  ShowTempDetailVC.swift
//  WeatherApp
//
//  Created by Abhishek kapoor on 03/05/22.
//

import UIKit

class ShowTempDetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        RestAPIHelper().getWetherDetail(for: "weather", lat: 26.9124, long: 75.7873){ (data,error) in
            print(data)
            print(error)
        }
    }
    
    


}
