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

}

//MARK: Interactor -
protocol CityWeatherScreenInteractorProtocol: class {

  var presenter: CityWeatherScreenPresenterProtocol?  { get set }
}

//MARK: View -
protocol CityWeatherScreenViewProtocol: class {

  var presenter: CityWeatherScreenPresenterProtocol?  { get set }
}
