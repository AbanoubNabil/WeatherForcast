//
//  CityWeatherScreenPresenter.swift
//  WeatherForcast
//
//  Created Abanoub Nabil on 12/26/20. 
//

import UIKit

class CityWeatherScreenPresenter: CityWeatherScreenPresenterProtocol {

    weak private var view: CityWeatherScreenViewProtocol?
    var interactor: CityWeatherScreenInteractorProtocol?
    private let router: CityWeatherScreenWireframeProtocol
	private let localizer = WeatherLocalizer()
	
    init(interface: CityWeatherScreenViewProtocol, interactor: CityWeatherScreenInteractorProtocol?, router: CityWeatherScreenWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}

extension CityWeatherScreenPresenter {
	var searchPlaceholder: String? {return localizer.searchPlaceholder }
	
	var cancel: String {return localizer.cancel }

	var forDay: String {return localizer.forDay }

	var forWeek: String { return localizer.forWeek }
	
	var maximum: String { return localizer.forWeek }
	
	func getWeatherDataFor(period: Period) {
		
	}
}
