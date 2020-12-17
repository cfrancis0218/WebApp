

import UIKit
import WebKit


extension DetailVC {
    
    func loadWebsite() {
        
        let url = URL(string: "https://www.\(webName!).com")!
        
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
}
