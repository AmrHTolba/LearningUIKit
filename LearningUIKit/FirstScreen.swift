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
    }
    
    func setupButton() {
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = UIColor(red: 230/255, green: 230/255, blue: 250/255, alpha: 1.0)
        nextButton.configuration?.title = "Next"
        nextButton.setTitleColor(UIColor(red: 134/255, green: 96/255, blue: 142/255, alpha: 1.0), for: .normal)
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

