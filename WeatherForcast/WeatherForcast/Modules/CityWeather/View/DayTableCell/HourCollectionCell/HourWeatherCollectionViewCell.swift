//
//  HourWeatherCollectionViewCell.swift
//  WeatherForcast
//
//  Created by Abanoub Nabil on 12/27/20.
//

import UIKit

class HourWeatherCollectionViewCell: UICollectionViewCell {

	@IBOutlet weak var weatherGrade: UILabel!
	@IBOutlet weak var time: UILabel!
	@IBOutlet weak var weatherIcon: UIImageView!
	
	override func awakeFromNib() {
        super.awakeFromNib()
    }

}
