//
//  StyleGuide.swift
//  BecauseIHateMathTipCalculator
//
//  Created by LAURA JELENICH on 10/12/20.
//

import UIKit

struct FontNames {
    static let latoBold = "Lato-Bold"
    static let latoRegular = "Lato-Regular"
    static let latoLight = "Lato-Light"
}

extension UIColor {
    static let lightColor = UIColor(named: "lightColor")!
    static let darkColor = UIColor(named: "darkColor")!
}

extension UIView {
    func addCornerRadius(radius: CGFloat = 5) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBoarder(width: CGFloat = 2, color: UIColor = .lightColor) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
}
