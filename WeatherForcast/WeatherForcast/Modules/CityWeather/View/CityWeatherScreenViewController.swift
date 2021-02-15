//
//  CityWeatherScreenViewController.swift
//  WeatherForcast
//
//  Created Abanoub Nabil on 12/26/20. 
//

import UIKit

class CityWeatherScreenViewController: BaseViewController, CityWeatherScreenViewProtocol {
	@IBOutlet weak var customNavigationBar: CustomNavigationBar!
	@IBOutlet weak var weatherDataTable: UITableView!
	
	var presenter: CityWeatherScreenPresenterProtocol?

	override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	override func userDidSearchCity(name: String) {
		
	}
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		.default
	}

	func regisetrNewsCell() {
//		let nib = UINib(nibName: "\(NewsTableViewCell.self)", bundle: nil)
//		weatherDataTable.register(nib, forCellReuseIdentifier: "\(NewsTableViewCell.self)")
	}

}

// MARK: TAble View Methods
extension CityWeatherScreenViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//		return presenter?.newsCount ?? 0
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "\(NewsTableViewCell.self)") as? NewsTableViewCell
		cell?.setUp(news: presenter?.getArticle(at: indexPath.row))
		return cell ?? UITableViewCell()
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//		presenter?.didTapedCell(at: indexPath.row)
	}
}

// MARK: NavigationBar Customization Methods
extension CityWeatherScreenViewController {

	private func setNavigationWith(title: String?) {
		let titleLabel = UILabel.init(frame: CGRect(x: 120, y: 24, width: UIScreen.main.bounds.width, height: 25))
		titleLabel.text = title
		titleLabel.textColor = .white

		let dots = createTapBarButton(image: #imageLiteral(resourceName: "dots"), selector: #selector(buttonTaped))
		navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.orange]
		navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0, green: 0.9972651601, blue: 0.7278878093, alpha: 1)
		navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0, green: 0.9972651601, blue: 0.7278878093, alpha: 1)
		navigationItem.titleView = titleLabel
		navigationItem.rightBarButtonItems = [dots]
	}

	func createTapBarButton(image: UIImage, selector: Selector) -> UIBarButtonItem {
		let button: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
		button.setImage(image.withRenderingMode(.alwaysTemplate), for: .normal)
		button.tintColor = .white
		button.addTarget(self, action: selector, for: .touchUpInside)
		return UIBarButtonItem(customView: button)
	}

	@objc func buttonTaped() {
		let actionSheetController: UIAlertController = UIAlertController(title: "Select Articles Period", message: nil, preferredStyle: .actionSheet)

		let cancelAction = UIAlertAction(title: presenter?.cancel, style: .cancel)

		let forDay = UIAlertAction(title: presenter?.forDay, style: .default) { _ in
			self.presenter?.getWeatherDataFor(period: .day)
		}

		let forWeek = UIAlertAction(title: presenter?.forWeek, style: .default) { _ in
			self.presenter?.getWeatherDataFor(period: .week)
		}

		let forMonth = UIAlertAction(title: presenter?.maximum, style: .default) { _ in
			self.presenter?.getWeatherDataFor(period: .maximum)
		}

		actionSheetController.addAction(forDay)
		actionSheetController.addAction(forWeek)
		actionSheetController.addAction(forMonth)
		actionSheetController.addAction(cancelAction)

		self.present(actionSheetController, animated: true, completion: nil)
	}

}
