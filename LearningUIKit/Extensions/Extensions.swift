//
//  Extensions.swift
//  LearningUIKit
//
//  Created by Amr El-Fiqi on 12/02/2025.
//

import Foundation
import UIKit

extension UIView {
    // Background LinearGradient effect
    func applyGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        
        // Define pastel lavender color scheme
        let color1 = UIColor(red: 230/255, green: 230/255, blue: 250/255, alpha: 1.0).cgColor
        let color2 = UIColor(red: 216/255, green: 191/255, blue: 216/255, alpha: 1.0).cgColor
        let color3 = UIColor(red: 250/255, green: 240/255, blue: 255/255, alpha: 1.0).cgColor
        
        gradientLayer.colors = [color1, color2, color3]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)  // Top-left
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)    // Bottom-right
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
