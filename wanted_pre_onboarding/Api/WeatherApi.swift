//
//  WeatherApi.swift
//  wanted_pre_onboarding
//
//  Created by so on 2022/09/14.
//

import Foundation


class WeatherApi {
    class func getData(cityName: String, completion: @escaping (CurrenWeather) -> Void) {
     
        let defaultSession = URLSession(configuration: .default)

        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=ebaad1078c344a671b20cf1d79406040&units=metric&lang=kr") else {
            print("URL is nil")
            return
        }
        
        let request = URLRequest(url: url)

        let dataTask = defaultSession.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            
            guard error == nil else {
                print("Error occur: \(String(describing: error))")
                return
            }

            guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
                let result = try decoder.decode(CurrenWeather.self, from: data)
                DispatchQueue.main.async {
                    completion(result)
                }
            } catch {
                print(error)
            }
        }
        dataTask.resume()
    }
}
