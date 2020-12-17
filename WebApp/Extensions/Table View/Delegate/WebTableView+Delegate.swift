//
//  WebTableView+Delegate.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-15.
//

import Foundation
import UIKit

extension MainVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let webView = DetailVC()
        navigationController?.pushViewController(webView, animated: true)
        webView.url = webData[indexPath.row].link
    }
}
