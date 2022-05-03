//
//  Weather.swift
//  WeatherApp
//
//  Created by Abhishek kapoor on 03/05/22.
//

import Foundation
// MARK: - Weather
struct Weather: Codable {
    let id: Int?
    let main, weatherDescription, icon: String?

    enum CodingKeys: String, CodingKey {
        case id, main
        case weatherDescription = "description"
        case icon
    }
}
