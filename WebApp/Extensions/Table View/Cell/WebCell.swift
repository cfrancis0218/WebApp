//
//  WebCell.swift
//  WebApp
//
//  Created by Christian Elijah on 2020-12-15.
//

import UIKit

class WebCell: UITableViewCell {

    let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 34/255.0, green: 40/255.0, blue: 49/255.0, alpha: 1.0)
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()

    let openButton = Open_Button()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        componentConstraints()
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "webCell")
        componentConstraints()
    }
    
    func componentConstraints() {
        
        
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        openButton.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(nameLabel)
        addSubview(openButton)
        
        NSLayoutConstraint.activate([
            
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            
            
            openButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            openButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            openButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            
        ])
    }
    

}
