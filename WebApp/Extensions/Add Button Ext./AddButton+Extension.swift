import UIKit

extension Add_Website_Screen {
    
    func addButtonConstraints() {
        view.addSubview(addWebsiteButton)
        addWebsiteButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            addWebsiteButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
            addWebsiteButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            addWebsiteButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            addWebsiteButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -350)
        ])
    }
}
