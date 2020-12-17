//
//  ViewController.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-10.
//

import UIKit

class MainVC: UIViewController, addWebsite {
    
    let webTableView = WebSaver_TableView()
    let openButton = Open_Button()
    
    //var webData: [WebData] = []
    var webData = [
        WebData(website: "Facebook", link: URL(string: "https://www.facebook.com")!),
        WebData(website: "Youtube", link: URL(string: "https://www.youtube.com")!),
        WebData(website: "Netflix", link: URL(string: "https://www.netflix.com")!),
        WebData(website: "Apple", link: URL(string: "https://www.apple.com")!),
        WebData(website: "Google", link: URL(string: "https://www.google.com")!),
        WebData(website: "Gmail", link: URL(string: "https://www.gmail.com")!),
        WebData(website: "Hotmail", link: URL(string: "https://www.outlook.com")!),
        WebData(website: "iCloud", link: URL(string: "https://www.icloud.com")!),
        WebData(website: "Disney Plus", link: URL(string: "https://www.disney.com")!),
        WebData(website: "Twitter", link: URL(string: "https://www.twitter.com")!),
        WebData(website: "Tesla", link: URL(string: "https://www.Tesla.com")!),
        WebData(website: "Yahoo", link: URL(string: "https://www.yahoo.com")!),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        navigationSetup()
        tableViewSetup()
        
    }
    
    func addSite(name: String, link: URL) {
        webData.append(WebData(website: name, link: link.absoluteURL))
        webTableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWebsite" {
            if let indexPath = self.webTableView.indexPathForSelectedRow {
                let vc = segue.destination as! DetailVC
                vc.url = webData[indexPath.row].link
            }
        }
        
    }
    
    


}

