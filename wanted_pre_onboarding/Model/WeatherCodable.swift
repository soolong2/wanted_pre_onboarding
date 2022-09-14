//
//  WeatherCodable.swift
//  wanted_pre_onboarding
//
//  Created by so on 2022/09/14.
//

import Foundation

struct CurrenWeather: Codable {
    let name : String
    
    struct Weather: Codable {
       let main : String
        let description : String
        let icon : String
    }
    
    let weather: [Weather]
    
    struct Main: Codable {
        let humidity : Double
        let pressure : Double
        let feels_like : Double
        let temp : Double
        let temp_min : Double
        let temp_max : Double
    }
    
    let main : Main
    
    struct Sys: Codable {
        let country: String
    }
    
    let sys : Sys
    
  
  struct Wind : Codable {
        let speed : Double
       
    }
    let wind : Wind
    

}
