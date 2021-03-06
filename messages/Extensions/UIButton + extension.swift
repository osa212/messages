//
//  UIButton + extension.swift
//  messages
//
//  Created by osa on 18.09.2021.
//

import UIKit

extension UIButton {
    convenience init(title: String,
                     isShadow: Bool = false,
                     backgroundColor: UIColor,
                     titleColor: UIColor,
                     font: UIFont? = .avenir20(),
                     cornerRadius: CGFloat = 4) {
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = font
        self.layer.cornerRadius = cornerRadius
        
        if isShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 0.2
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
    
    
}
