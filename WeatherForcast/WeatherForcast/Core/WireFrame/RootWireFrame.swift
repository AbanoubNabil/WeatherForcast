//
//  RootWireFrame.swift
//  WeatherForcast
//
//  Created by Abanoub Nabil on 12/26/20.
//

import UIKit

class RootWireframe {
	// MARK: - Instance Variables
	lazy var landingScreenNavigationController = UINavigationController()

	init(onWindow window: inout UIWindow?) {
		if window == nil {
			window = UIWindow()
		}
		setApplicationRoot(window: window!)
	}
	
	/*
	use this method to add any checks for diferrent root setup
	*/
	func setApplicationRoot(window: UIWindow) {
		setUpHomeScreen(window: window)
		window.makeKeyAndVisible()
	}

	func setUpHomeScreen(window: UIWindow) {
		let cityWeather = CityWeatherScreenRouter.createModule()
		landingScreenNavigationController.isNavigationBarHidden = true
		landingScreenNavigationController.viewControllers = [cityWeather]
		window.rootViewController = landingScreenNavigationController
	}
}
