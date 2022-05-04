//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Joao Victor Silva Anastacio on 2022-05-04.
//  Copyright © 2022 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20.0
        stack.alignment = .fill
        stack.distribution = .equalSpacing
        return stack
    }()

    lazy var countryLabel: UILabel = {
        let country = UILabel()
        country.translatesAutoresizingMaskIntoConstraints = false
        country.text = "Country"
        country.font = UIFont.boldSystemFont(ofSize: 16.0)
        return country
    }()
    var country: String = ""
    
    lazy var cityLabel: UILabel = {
        let city = UILabel()
        city.translatesAutoresizingMaskIntoConstraints = false
        city.text = "City"
        city.font = UIFont.boldSystemFont(ofSize: 16.0)
        return city
    }()
    var city: String = ""
    
    lazy var temperatureLabel: UILabel = {
        let temperature = UILabel()
        temperature.translatesAutoresizingMaskIntoConstraints = false
        temperature.text = "Temperature"
        temperature.font = UIFont.boldSystemFont(ofSize: 16.0)
        return temperature
    }()
    var temperature: Double = 0.0
    
    lazy var summaryLabel: UILabel = {
        let summary = UILabel()
        summary.translatesAutoresizingMaskIntoConstraints = false
        summary.text = "Summary"
        summary.font = UIFont.boldSystemFont(ofSize: 16.0)
        return summary
    }()
    var summary: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(self.country)
        print(self.city)
        print(self.temperature)
        print(self.summary)
        
        // Change details view background color
        view.backgroundColor = .white
        
        // Adding labels as sub views
        stackView.addSubview(countryLabel)
        stackView.addSubview(cityLabel)
        stackView.addSubview(temperatureLabel)
        stackView.addSubview(summaryLabel)
        
        self.view.addSubview(stackView)
        
        // Activating Constraints
        NSLayoutConstraint.activate([
            countryLabel.widthAnchor.constraint(equalToConstant: 200),
            countryLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            countryLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            cityLabel.widthAnchor.constraint(equalToConstant: 200),
            cityLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cityLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            temperatureLabel.widthAnchor.constraint(equalToConstant: 200),
            temperatureLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            temperatureLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            summaryLabel.widthAnchor.constraint(equalToConstant: 200),
            summaryLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            summaryLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
