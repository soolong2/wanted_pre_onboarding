//
//  WeatherViewController.swift
//  wanted_pre_onboarding
//
//  Created by so on 2022/09/13.
//

import UIKit

class WeatherViewController: UIViewController {
    let citiesWeatehr : [CitiesWeather] = [CitiesWeather(country: "한국", weatherImage: "", cityName: "서울", current_humidity: "30도", cityWhy: "아직"),CitiesWeather(country: "한국", weatherImage: "", cityName: "부산", current_humidity: "40", cityWhy: "아직도미정"),CitiesWeather(country: "한국", weatherImage: "", cityName: "정자역", current_humidity: "80도", cityWhy: "뭐할까?"),CitiesWeather(country: "독일", weatherImage: "", cityName: "프랑크푸르트", current_humidity: "20도", cityWhy: "뭐하지")]
    
    
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
        weatherCell.countryLabel.text = data.country
        weatherCell.weatherImage.image = UIImage(named: "\(data.weatherImage)")
        weatherCell.current_humidityLabel.text = data.current_humidity
        weatherCell.cityNameLabel.text = data.cityName
        weatherCell.current_whyLabel.text = data.cityWhy
        
        return weatherCell
    

}
}
    
    
