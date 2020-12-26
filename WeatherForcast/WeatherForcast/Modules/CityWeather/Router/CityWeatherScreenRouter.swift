//
//  CityWeatherScreenRouter.swift
//  WeatherForcast
//
//  Created Abanoub Nabil on 12/26/20. 
//

import UIKit

class CityWeatherScreenRouter: CityWeatherScreenWireframeProtocol {
    
    weak var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = CityWeatherScreenViewController(nibName: nil, bundle: nil)
        let interactor = CityWeatherScreenInteractor()
        let router = CityWeatherScreenRouter()
        let presenter = CityWeatherScreenPresenter(interface: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
}
