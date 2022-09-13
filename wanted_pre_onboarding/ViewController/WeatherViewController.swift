//
//  WeatherViewController.swift
//  wanted_pre_onboarding
//
//  Created by so on 2022/09/13.
//

import UIKit

class WeatherViewController: UIViewController {
    let citiesWeatehr : [CitiesWeather] = [CitiesWeather(country: "한국", weatherImage: "04d", cityName: "서울", current_humidity: "30도", cityWhy: "아직"),CitiesWeather(country: "한국", weatherImage: "04d", cityName: "부산", current_humidity: "40", cityWhy: "아직도미정"),CitiesWeather(country: "한국", weatherImage: "04d", cityName: "정자역", current_humidity: "80도", cityWhy: "뭐할까?"),CitiesWeather(country: "독일", weatherImage: "04d", cityName: "프랑크푸르트", current_humidity: "20도", cityWhy: "뭐하지")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    }
extension WeatherViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citiesWeatehr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        guard let weatherCell = tableView.dequeueReusableCell(withIdentifier: "WeatherTableViewCell", for: indexPath)as? WeatherTableViewCell else {
            return UITableViewCell()
}
        let data = citiesWeatehr[indexPath.row]
       
        weatherCell.dataModel(data)
        
        return weatherCell
    

}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: "SubViewController") as? SubViewController else {return}
        viewController.subModel =  SubWeatehr.init(cityName: "한국", cityImage: "", current_temperature: "20도", sensible_temperature: "30도", minimum_temperature: "18도", highest_temperature: "34도", pressure: "4기압", wind_speed: "3미터퍼세크", current_humidity: "30도", weather_information: "춥다")
        
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}
    
    
