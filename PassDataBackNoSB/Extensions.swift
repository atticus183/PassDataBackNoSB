//
//  Extensions.swift
//  PassDataBackNoSB
//
//  Created by Josh R on 11/14/19.
//  Copyright © 2019 Josh R. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func roundCorners(by value: CGFloat) {
        self.layer.cornerRadius = value
    }
    
    func giveRoundCorners() {
        self.layer.cornerRadius = self.layer.frame.height / 2
    }
}
