//
//  SurveyButton.swift
//  LearningUIKit
//
//  Created by Amr El-Fiqi on 13/02/2025.
//

import UIKit

class SurveyButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    func setupButton() {
        self.backgroundColor = UIColor(red: 60/255, green: 40/255, blue: 90/255, alpha: 1.0)
        self.setTitleColor(.white, for: .normal)
        self.layer.cornerRadius = 10
        self.titleLabel?.font = UIFont(name: "AvenirNext-Medium", size: 20)
    }
}
