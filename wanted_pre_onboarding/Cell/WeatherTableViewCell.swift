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
    @IBOutlet weak var current_whyLabel: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func dataModel(_ model: CitiesWeather) {
        cityNameLabel.text = model.cityName
        countryLabel.text = model.country
        let url = URL(string: "https://openweathermap.org/img/wn/\(model.weatherImage)@2x.png")
        DispatchQueue.global().async {
            let data = try! Data(contentsOf: url!)
            DispatchQueue.main.async {
                self.weatherImage.image = UIImage(data: data)
            }
        }
    
        current_whyLabel.text = model.cityWhy
        current_humidityLabel.text = model.current_humidity
    }
}
