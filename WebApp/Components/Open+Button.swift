//
//  Open+Button.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-15.
//

import UIKit

class Open_Button: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        buttonSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buttonSetup()
    }
    
    func buttonSetup() {
        setTitle("Open", for: .normal)
        setTitleColor(UIColor(red: 88/255.0, green: 66/255.0, blue: 66/255.0, alpha: 1.0), for: .normal)
    }
}
