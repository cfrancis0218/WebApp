//
//  Navigation+MainVC.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-15.
//

import Foundation
import UIKit

extension MainVC {
    
    func navigationSetup() {
        title = "Web Saver"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(goToAddWebsite))
        
        navigationItem.rightBarButtonItem?.tintColor = UIColor(red: 34/255.0, green: 40/255.0, blue: 49/255.0, alpha: 1.0)
        
        let addWebsiteScreen = Add_Website_Screen()
        addWebsiteScreen.delegate = self
    }
    
    @objc func goToAddWebsite() {
        let addScreen = Add_Website_Screen()
        navigationController?.pushViewController(addScreen, animated: true)
        
    }

}
