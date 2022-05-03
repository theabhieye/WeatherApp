//
//  NetworkManager.swift
//  WeatherApp
//
//  Created by Abhishek kapoor on 03/05/22.
//

import Foundation

private enum NetworkError: Error {
    case invalidUrl
    case invalidData
}

class NetworkManager {
    func createRequest(for url: String,param:[String:String]) -> URLRequest? {
        var url:String = "\(baseURL)\(url)?appid=\(apiKey)"
        for (key, value) in param {
            url.append("&\(key)=\(value)")
        }
        guard let url = URL(string: url) else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        return request
    }
    func executeRequest<T: Codable>(request: URLRequest, completion: ((T?, Error?) -> Void)?) {
        let session = URLSession(configuration: .default)
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            guard let data = data else {
                completion?(nil, error)
                return
            }
            if let decodedResponse = try? JSONDecoder().decode(T.self, from: data) {
                DispatchQueue.main.async {
                    completion?(decodedResponse, nil)
                }
            } else {
                completion?(nil, NetworkError.invalidData)
            }
        }
        dataTask.resume()
    }
}
