//
//  AppDelegate.swift
//  WeatherForcast
//
//  Created by Abanoub Nabil on 12/26/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	var rootWireFrame: RootWireframe!

	func application(_ application: UIApplication, didFinishLaunchingWithOptions
						launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		rootWireFrame = RootWireframe(onWindow: &window)
		return true
	}


}

