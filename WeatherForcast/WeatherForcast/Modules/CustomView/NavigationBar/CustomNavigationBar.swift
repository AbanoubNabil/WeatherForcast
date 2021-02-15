//
//  CustomNavigationBar.swift
//  WeatherForcast
//
//  Created by Abanoub Nabil on 12/26/20.
//

import UIKit

protocol CustomNavigationBarProtocol {
	func userDidSearchCity(name: String)
}

class CustomNavigationBar: UIView {
	
	@IBOutlet weak var cityTextField: UITextField!
	@IBOutlet var contentView: UIView!
	
	var delegate: CustomNavigationBarProtocol?
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		commonInit()
	}

	required init?(coder: NSCoder) {
		super.init(coder: coder)
		commonInit()
	}
	
	private func commonInit() {
		Bundle.main.loadNibNamed("\(CustomNavigationBar.self)", owner: self, options: nil)
		contentView.fillInView(self)
	}
	
	@IBAction func searchCity(_ sender: Any) {
		guard let name = cityTextField.text else {
			return
		}
		delegate?.userDidSearchCity(name: name)
	}
	
}
