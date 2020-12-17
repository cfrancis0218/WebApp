//
//  Add+Website+Button.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-17.
//

import UIKit

class Add_Website_Button: UIButton {

    required init?(coder aButtonDecoder: NSCoder) {
        super.init(coder: aButtonDecoder)
        addButtonSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addButtonSetup()
    }
    
    fileprivate func addButtonSetup() {
        setTitle("Add Website", for: .normal)
        setTitleColor(UIColor(red: 121/255.0, green: 145/255.0, blue: 203/255.0, alpha: 1.0), for: .normal)
        layer.cornerRadius = 32.0
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = 8.0
        layer.shadowOpacity = 0.3
        backgroundColor = .white
    }
}
