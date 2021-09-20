//
//  UILabel + extension.swift
//  messages
//
//  Created by osa on 18.09.2021.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
