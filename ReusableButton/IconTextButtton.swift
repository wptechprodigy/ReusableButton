//
//  IconTextButtton.swift
//  ReusableButton
//
//  Created by waheedCodes on 20/11/2020.
//

import UIKit

struct IconTextButtonViewModel {
    let text: String
    let icon: UIImage?
    let backgroundColor: UIColor?
}

class IconTextButtton: UIButton {
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        return label
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label)
        addSubview(iconImageView )
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure(with viewModel: IconTextButtonViewModel) {
        label.text = viewModel.text
        iconImageView.image = viewModel.icon
        backgroundColor = viewModel.backgroundColor
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.sizeToFit()
        let iconSize: CGFloat = 30
        let iconRigthPadding: CGFloat = 8
        let iconX: CGFloat = (frame.size.width - label.frame.size.width - iconSize - iconRigthPadding) / 2
        iconImageView.frame = CGRect(x: iconX,
                                     y: (frame.size.height - iconSize) / 2,
                                     width: iconSize,
                                     height: iconSize)
        label.frame = CGRect(x: (iconX + iconSize + iconRigthPadding),
                             y: 0,
                             width: label.frame.size.width,
                             height: frame.size.height)
    }
}
