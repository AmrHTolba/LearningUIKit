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
        applyGradientBackground(to: view)
        setupButton()
    }
    
    func setupButton() {
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = UIColor(red: 230/255, green: 230/255, blue: 250/255, alpha: 1.0)
        nextButton.configuration?.title = "Next"
        nextButton.setTitleColor(UIColor(red: 134/255, green: 96/255, blue: 142/255, alpha: 1.0), for: .normal)
        nextButton.layer.cornerRadius = 10
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    // Background LinearGradient effect
    func applyGradientBackground(to view: UIView) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        
        // Define pastel lavender color scheme
        let color1 = UIColor(red: 230/255, green: 230/255, blue: 250/255, alpha: 1.0).cgColor  // Lavender
        let color2 = UIColor(red: 216/255, green: 191/255, blue: 216/255, alpha: 1.0).cgColor  // Thistle
        let color3 = UIColor(red: 250/255, green: 240/255, blue: 255/255, alpha: 1.0).cgColor  // Lavender Blush
        
        gradientLayer.colors = [color1, color2, color3]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)  // Top-left
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)    // Bottom-right
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }


}

