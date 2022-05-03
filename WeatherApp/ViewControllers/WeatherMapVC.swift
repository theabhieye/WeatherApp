//
//  ViewController.swift
//  WeatherApp
//
//  Created by Abhishek kapoor on 03/05/22.
//

import UIKit
import MapKit

class WeatherMapVC: UIViewController {
    
    @IBOutlet weak var weatherButton: UIButton!
    @IBOutlet weak var appleMapView: MKMapView!
    private var cLocationManager:CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cLocationManager?.delegate = self
        cLocationManager?.desiredAccuracy = kCLLocationAccuracyBest
        cLocationManager?.requestWhenInUseAuthorization()
        cLocationManager?.startUpdatingLocation()
    }

    @IBAction func onTappedGetWeatherButton(_ sender: UIButton) {
        // TODO: Navigate to next screen to show weather condition
        
    }
  
}
extension WeatherMapVC: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let first = locations.first else {
            return
        }
//        appleMapView.
    }
}

