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
    
    var webData: [WebData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        navigationSetup()
        tableViewSetup()
        webTableView.register(WebCell.self, forCellReuseIdentifier: "webCell")
        webTableView.dataSource = self
        webTableView.delegate = self
    }
    
    func addSite(name: String, link: String) {
        webData.append(WebData(website: name, link: link))
        webTableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWebsite" {
            if let indexPath = self.webTableView.indexPathForSelectedRow {
                let vc = segue.destination as! Add_Website_Screen
                vc.delegate = self
                vc.detailWebVC.webName = webData[indexPath.row].link
                vc.nameField.text = webData[indexPath.row].website
                vc.linkField.text = webData[indexPath.row].link
            }
        }
        
    }
    
    


}

