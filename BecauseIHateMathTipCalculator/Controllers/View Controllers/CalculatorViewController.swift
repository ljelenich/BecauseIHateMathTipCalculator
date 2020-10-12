//
//  CalculatorViewController.swift
//  BecauseIHateMathTipCalculator
//
//  Created by LAURA JELENICH on 10/12/20.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: CustomTextField!
    @IBOutlet weak var totalAmountLabel: labelBold!
    @IBOutlet weak var tipSegmentedControl: CustomSegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    @IBAction func tipAmountSegmentedControlTapped(_ sender: Any) {
        calculateTip()
    }
    
    func setupViews() {
        view.backgroundColor = .darkColor
        totalAmountLabel.text = String(format: "$%.2f")
    }
    
    func calculateTip() {
        guard let billAmount = Double(billAmountTextField.text ?? "") ?? 0 else { return }
        let bill = billAmount
        var total = 0.0
        switch  tipSegmentedControl.selectedSegmentIndex {
        case 0:
            let tip = bill * 0.10
            total = bill + tip
        case 1:
            let tip = bill * 0.18
            total = bill + tip
        case 2:
            let tip = bill * 0.20
            total = bill + tip
        case 3:
            let tip = bill * 0.25
            total = bill + tip
        default:
            break
        }
        totalAmountLabel.text = String(format: "$%.2f", total)
    }

}
