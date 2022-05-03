//
//  Sys.swift
//  WeatherApp
//
//  Created by Abhishek kapoor on 03/05/22.
//

import Foundation
// MARK: - Sys
struct Sys: Codable {
    let type, id: Int?
    let country: String?
    let sunrise, sunset: Int?
}
