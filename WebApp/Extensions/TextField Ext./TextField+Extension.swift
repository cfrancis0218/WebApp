import UIKit

extension Add_Website_Screen {
    
    func textFieldSetup() {
        
        view.addSubview(nameField)
        view.addSubview(linkField)
        
        nameField.translatesAutoresizingMaskIntoConstraints = false
        linkField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameField.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            nameField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            nameField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            nameField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
            linkField.topAnchor.constraint(equalTo: view.topAnchor, constant: 350),
            linkField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            linkField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            linkField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -450),
        ])
    }
    
    func linkTextFields() {
        webCell.nameLabel.text = nameField.text
        linkField.text = webData?.link.absoluteURL.absoluteString
        
        addWebsiteButton.addTarget(self, action: #selector(ToTableView), for: .touchUpInside)
    }
    
    @objc func ToTableView() {
        
        navigationController?.popToRootViewController(animated: true)
    }
}
