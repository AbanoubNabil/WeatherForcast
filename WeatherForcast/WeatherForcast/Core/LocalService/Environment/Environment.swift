//
//  EnvironmentService.swift
//  WeatherForcast
//
//  Created by Abanoub Nabil on 12/3/20.
//

import Foundation

struct Environment {
	static let shared = Environment()

	var weatherUrlString: String {
		"https://api.openweathermap.org/data/2.5/forecast/daily"
	}

	var apiKey: String {
		"cdaaed41b12df2305020ca74a0ed95a1"
	}

}
