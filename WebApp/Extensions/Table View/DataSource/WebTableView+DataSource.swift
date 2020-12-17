//
//  WebTableView+DataSource.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-15.
//

import Foundation
import UIKit

extension MainVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return webData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let webCell = webTableView.dequeueReusableCell(withIdentifier: "webCell", for: indexPath) as! WebCell
        webCell.nameLabel.text = webData[indexPath.row].website
        webCell.indexPosition = indexPath.row
        webCell.addSubview(webCell.openButton)
        return webCell
    }
    
    
    
    
}
