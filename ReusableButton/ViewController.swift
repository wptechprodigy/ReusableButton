//
//  ViewController.swift
//  ReusableButton
//
//  Created by waheedCodes on 20/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let twoLinedButton = TwoLinedButton(frame: CGRect(x: 0,
                                                          y: 0,
                                                          width: 300,
                                                          height: 55))
        view.addSubview(twoLinedButton)
        twoLinedButton.center = view.center
        twoLinedButton.configure(with: TwoLinedButtonViewModel(
                                    primaryText: LabelText.primaryText,
                                    secondaryText: LabelText.secondaryText))
        
        let checkoutButton = IconTextButtton(frame: CGRect(x: (view.frame.size.width - 300) / 2,
                                                           y: (view.frame.size.height / 2.5),
                                                           width: 300,
                                                           height: 55))
        view.addSubview(checkoutButton)
        checkoutButton.configure(with: IconTextButtonViewModel(
                                    text: CheckouttButtonConstants.text,
                                    icon: UIImage(systemName: CheckouttButtonConstants.iconName),
                                    backgroundColor: .systemRed))
        
        let flightButton = IconTextButtton(frame: CGRect(x: (view.frame.size.width - 300) / 2,
                                                         y: (view.frame.size.height / 3),
                                                         width: 300,
                                                         height: 55))
        view.addSubview(flightButton)
        flightButton.configure(with: IconTextButtonViewModel(
                                text: FlightButtonConstants.text,
                                icon: UIImage(systemName: FlightButtonConstants.iconName),
                                backgroundColor: .link))
    }
    
    
}

