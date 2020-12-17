//
//  Add+Website+Screen.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-17.
//

import UIKit

protocol addWebsite {
    func addSite(name: String, link: URL)
}

class Add_Website_Screen: UIViewController {
    
    let nameField = Name_TextField()
    let linkField = Link_TextField()
    let addWebsiteButton = Add_Website_Button()
    let webCell = WebCell()
    let webData: WebData? = nil
    var delegate: addWebsite?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        textFieldSetup()
        addButtonConstraints()
        linkTextFields()
    }
}
