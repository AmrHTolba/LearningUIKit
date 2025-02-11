//
//  ViewController.swift
//  LearningUIKit
//
//  Created by Amr El-Fiqi on 11/02/2025.
//

import UIKit

class FirstScreen: UIViewController {
    // MARK: - Properties
    
    let nextButton = UIButton()
    
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First Screen"
        view.applyGradientBackground()
        setupButton()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [
                .foregroundColor: UIColor(red: 92/255, green: 64/255, blue: 120/255, alpha: 1.0),
                .font: UIFont.systemFont(ofSize: 50, weight: .bold) // Optional: Customize font
            ]
    }
    
    func setupButton() {
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = UIColor(red: 200/255, green: 180/255, blue: 225/255, alpha: 1.0)
        nextButton.configuration?.title = "Next"
        nextButton.setTitleColor(UIColor(red: 60/255, green: 40/255, blue: 90/255, alpha: 1.0), for: .normal)
        nextButton.layer.cornerRadius = 10
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }

    
    @objc func goToNextScreen() {
        let nextScreen = SecondScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }


}

