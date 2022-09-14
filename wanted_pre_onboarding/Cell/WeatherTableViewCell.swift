//
//  WeatherTableViewCell.swift
//  wanted_pre_onboarding
//
//  Created by so on 2022/09/13.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var current_humidityLabel: UILabel!
    @IBOutlet weak var current_temperature: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func dataModel(_ model: CitiesWeather) {
        
        
        cityNameLabel.text = "도시: \(model.cityName)"
        countryLabel.text = "국적: \(model.country)"
        if let weatherImage = model.weatherImage, let url = URL(string: "https://openweathermap.org/img/wn/\(weatherImage)@2x.png") {
            DispatchQueue.global().async {
                DispatchQueue.main.async {
                    self.weatherImage.image = UIImage(data: ImageCache.shared.imageDownload(url: url))
                }
            }
        }
        
        current_temperature.text = "현재 온도: \(model.current_temperature)"
        current_humidityLabel.text = "현재 습도: \(model.current_humidity)%"
    }
}
