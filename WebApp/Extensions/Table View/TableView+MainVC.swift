//
//  TableView+MainVC.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-15.
//

import Foundation
import UIKit

extension MainVC {
    
    func tableViewSetup() {

        view.addSubview(webTableView)
        webTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            webTableView.topAnchor.constraint(equalTo: view.topAnchor),
            webTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
