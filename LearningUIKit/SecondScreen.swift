//
//  NextScreen.swift
//  LearningUIKit
//
//  Created by Amr El-Fiqi on 11/02/2025.
//

import UIKit

class SecondScreen: UIViewController {
    // MARK: - Properties
    
    
    // MARK: - UI Components
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.text = "How would you rate my work?"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    // MARK: - Setup UI
    private func setupUI() {
        title = "Second Screen"
        view.applyGradientBackground()
        setupMyLabel()
        
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [
                .foregroundColor: UIColor(red: 92/255, green: 64/255, blue: 120/255, alpha: 1.0),
                .font: UIFont.systemFont(ofSize: 36, weight: .bold)
            ]
    }
    
    private func setupButton() {
        
    }
    
    private func setupMyLabel() {
        view.addSubview(myLabel)
        
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            myLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            myLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            myLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
        ])
    }
}
