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

    init(interface: CityWeatherScreenViewProtocol, interactor: CityWeatherScreenInteractorProtocol?, router: CityWeatherScreenWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
