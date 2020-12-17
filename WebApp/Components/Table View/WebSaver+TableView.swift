//
//  WebSaver+TableView.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-15.
//

import UIKit

class WebSaver_TableView: UITableView {
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        tableViewSetup()
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .plain)
        tableViewSetup()
    }
    
    fileprivate func tableViewSetup() {
        backgroundColor = .clear
    }
    
    
}
