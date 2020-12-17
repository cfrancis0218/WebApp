//
//  Name_TextField.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-17.
//

import UIKit

class Name_TextField: UITextField {

    required init?(coder aFieldDecoder: NSCoder) {
        super.init(coder: aFieldDecoder)
        nameFieldSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        nameFieldSetup()
    }
    
    fileprivate func nameFieldSetup() {
        keyboardAppearance = .dark
        layer.cornerRadius = 18.0
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = 8.0
        layer.shadowOpacity = 0.3
        backgroundColor = .white
        borderStyle = .none
        attributedPlaceholder = NSAttributedString(string: " Website Name:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
    }
}
