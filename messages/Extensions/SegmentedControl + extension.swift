//
//  SegmentedControl + extension.swift
//  messages
//
//  Created by osa on 25.09.2021.
//

import UIKit

extension UISegmentedControl {
    convenience init(first: String, second: String) {
        self.init()
        
        insertSegment(withTitle: first, at: 0, animated: true)
        insertSegment(withTitle: second, at: 1, animated: true)

        self.selectedSegmentIndex = 0
    }
}
