//
//  CustomSegmentedControl.swift
//  BecauseIHateMathTipCalculator
//
//  Created by LAURA JELENICH on 10/12/20.
//

import UIKit

class CustomSegmentedControl: UISegmentedControl {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
    func setupViews() {
        self.backgroundColor = UIColor.lightColor
        self.tintColor = .lightColor
    }
}
