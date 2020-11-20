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
    }


}

