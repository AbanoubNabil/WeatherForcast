//
//  CityWeatherScreenProtocols.swift
//  WeatherForcast
//
//  Created Abanoub Nabil on 12/26/20. 
//

import Foundation

//MARK: Wireframe -
protocol CityWeatherScreenWireframeProtocol: class {

}
//MARK: Presenter -
protocol CityWeatherScreenPresenterProtocol: class {
	
	var searchPlaceholder: String? {get}
	
	var cancel: String {get}

	var forDay: String {get}

	var forWeek: String{get}
	
	var maximum: String{get}
	
	func getWeatherDataFor(period: Period)
	
}

//MARK: Interactor -
protocol CityWeatherScreenInteractorProtocol: class {

  var presenter: CityWeatherScreenPresenterProtocol?  { get set }
}

//MARK: View -
protocol CityWeatherScreenViewProtocol: class {

  var presenter: CityWeatherScreenPresenterProtocol?  { get set }
}
