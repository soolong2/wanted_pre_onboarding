//
//  SubViewController.swift
//  wanted_pre_onboarding
//
//  Created by so on 2022/09/13.
//

import UIKit

class SubViewController: UIViewController {
    
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    @IBOutlet weak var current_temperature: UILabel!
    @IBOutlet weak var sensible_temperature: UILabel!
    @IBOutlet weak var minimum_temperature: UILabel!
    @IBOutlet weak var highest_temperature: UILabel!
    @IBOutlet weak var pressure: UILabel!
    @IBOutlet weak var wind_speed: UILabel!
    @IBOutlet weak var current_humidity: UILabel!
    @IBOutlet weak var weather_information: UILabel!
    
    var subModel : SubWeatehr?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let subModel = subModel {
            cityName.text = subModel.cityName.replacingString()
           
            if let weatherImage = subModel.cityImage, let url = URL(string: "https://openweathermap.org/img/wn/\(weatherImage)@2x.png") {
                DispatchQueue.global().async {
                    let data = try! Data(contentsOf: url)
                    DispatchQueue.main.async {
                        self.cityImage.image = UIImage(data: data)
                    }
                    }
            }
            current_temperature.text = "현재 기온: \(subModel.current_temperature)"
            sensible_temperature.text = "체감 온도: \(subModel.sensible_temperature)"
            minimum_temperature.text = "최저 온도: \(subModel.minimum_temperature)"
            highest_temperature.text = "최고 온도: \(subModel.highest_temperature)"
            pressure.text = "기압: \(subModel.pressure)hPa"
            wind_speed.text = "풍속: \(subModel.wind_speed)m/s"
            current_humidity.text = "습도: \(subModel.current_humidity)%"
            weather_information.text = "날씨: \(subModel.weather_information)"
        }
        
        
        
        
            }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
