//
//  Link_TextField.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-17.
//

import UIKit

class Link_TextField: UITextField {

    required init?(coder aFieldDecoder: NSCoder) {
        super.init(coder: aFieldDecoder)
        linkFieldSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        linkFieldSetup()
    }
    
    fileprivate func linkFieldSetup() {
        keyboardAppearance = .dark
        layer.cornerRadius = 18.0
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = 8.0
        layer.shadowOpacity = 0.3
        backgroundColor = .white
        borderStyle = .none
        attributedPlaceholder = NSAttributedString(string: " Website Link:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
    }
}
