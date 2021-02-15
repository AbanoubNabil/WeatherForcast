//
//  EnvironmentProtocol.swift
//  WeatherForcast
//
//  Created by Abanoub Nabil on 12/3/20.
//

import Foundation

protocol EnvironmentProtocol {
	var weatherUrlString: String { get }
}

extension EnvironmentProtocol {
	var weatherUrlString: String {
		Environment.shared.weatherUrlString
	}
}
