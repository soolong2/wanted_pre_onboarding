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
            cityName.text = subModel.cityName
            cityImage.image = UIImage(named: "")
            current_temperature.text = subModel.current_temperature
            sensible_temperature.text = subModel.sensible_temperature
            minimum_temperature.text = subModel.minimum_temperature
            highest_temperature.text = subModel.highest_temperature
            pressure.text = subModel.pressure
            wind_speed.text = subModel.wind_speed
            current_humidity.text = subModel.current_humidity
            weather_information.text = subModel.weather_information
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
