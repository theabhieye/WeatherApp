//
//  recentlyViewedTableViewCell.swift
//  WeatherApp
//
//  Created by Abhishek kapoor on 03/05/22.
//

import UIKit

class RecentlyViewedTableViewCell: UITableViewCell {

    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var cityNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func setUp(temprature:String,cityName:String) {
        tempLabel.text = temprature
        cityNameLabel.text = cityName
    }

}
