//
//  ColorPresenterVC.swift
//  Color Magic 2
//
//  Created by Zack Saltzman on 3/6/18.
//  Copyright © 2018 Zack Saltzman. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorNameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidChooseColor(color: UIColor, withName colorName: String) {
       view.backgroundColor = color
        colorNameLbl.text = colorName
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            colorPickerVC.delegate = self
        }
    }
    
}

