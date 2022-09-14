//
//  WeatherViewController.swift
//  wanted_pre_onboarding
//
//  Created by so on 2022/09/13.
//

import UIKit

class WeatherViewController: UIViewController {
    let citiesName : Array = ["gongju","Gwangju", "gumi", "gunsan", "daegu", "daejeon", "mokpo", "busan", "seosan", "seoul", "sokcho", "suwon", "suncheon", "ulsan", "iksan", "jeonju", "jeju", "cheonan", "cheongju", "chuncheon"]

    
    
    @IBOutlet weak var weatherTableView: UITableView!
    var citiesWeatehr : [CitiesWeather] = []
    var responses: [CurrenWeather] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for cities in citiesName {
            WeatherApi.getData(cityName: cities) { result in
                self.citiesWeatehr.append(CitiesWeather(country: result.sys.country.replacingString(), weatherImage: result.weather.first?.icon, cityName: result.name.replacingString(), current_humidity: result.main.humidity, current_temperature: result.main.temp.temperatureSting))
                self.responses.append(result)
                self.weatherTableView.reloadData()
            
            }
        }
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
        let response = responses[indexPath.row]
        viewController.subModel = SubWeatehr(cityName: response.name, cityImage: response.weather.first?.icon, current_temperature: response.main.temp.temperatureSting, sensible_temperature: response.main.feels_like.temperatureSting, minimum_temperature: response.main.temp_min.temperatureSting, highest_temperature: response.main.temp_max.temperatureSting, pressure: response.main.pressure, wind_speed: response.wind.speed, current_humidity: response.main.humidity, weather_information: response.weather.first?.description ?? "")
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}



fileprivate let temperatureFormatter: MeasurementFormatter = {
    let f = MeasurementFormatter()
    f.locale = Locale(identifier: "ko_kr")
    f.numberFormatter.maximumFractionDigits = 1
    f.unitOptions = .temperatureWithoutUnit
    return f
}()

extension Double {
    var temperatureSting: String {
        let temp = Measurement<UnitTemperature>(value: self, unit: .celsius)
        return temperatureFormatter.string(from: temp)
    }
}
