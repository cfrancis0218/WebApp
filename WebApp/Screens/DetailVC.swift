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
    
    var url = URL(string: "https://www.youtube.com")!
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        loadWebsite()
    }
    
    fileprivate func loadWebsite() {
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    
}
