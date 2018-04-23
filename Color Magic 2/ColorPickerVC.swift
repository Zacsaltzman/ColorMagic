//
//  ColorPickerVC.swift
//  Color Magic 2
//
//  Created by Zack Saltzman on 3/6/18.
//  Copyright © 2018 Zack Saltzman. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: ColorTransferDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func colorBtnWasPressed (sender: UIButton) {
        if delegate != nil {
            delegate?.userDidChooseColor(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }

}
