//
//  ColorTransferDelegate.swift
//  Color Magic 2
//
//  Created by Zack Saltzman on 3/6/18.
//  Copyright © 2018 Zack Saltzman. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChooseColor(color: UIColor, withName colorName: String)
}
