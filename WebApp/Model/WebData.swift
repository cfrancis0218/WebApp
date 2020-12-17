//
//  WebData.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-15.
//

import Foundation
import UIKit

class WebData {
    var website = ""
    var link = ""
    
    convenience init(website: String, link: String) {
        self.init()
        self.website = website
        self.link = link
    }
}
