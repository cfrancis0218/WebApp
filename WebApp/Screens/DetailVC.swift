//
//  DetailVC.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-15.
//

import UIKit
import WebKit

class DetailVC: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    var webData: WebData!
    var webName: String! = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        loadWebsite()

    }
    
    
    
    
}
