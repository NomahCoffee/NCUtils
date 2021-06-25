//
//  ViewController.swift
//  NCUtilsExample
//
//  Created by Caleb Rudnicki on 6/25/21.
//

import UIKit
import NCUtils

class ViewController: UIViewController {
    
    // MARK: Properties
    
    let textField1: NCTextField = {
        let textField = NCTextField()
        textField.placeholder = "Normal"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let textField2: NCEmailTextField = {
        let textField = NCEmailTextField()
        textField.placeholder = "Email"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let textField3: NCPasswordTextField = {
        let textField = NCPasswordTextField()
        textField.placeholder = "Password"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    // MARK: Init

    override func viewDidLoad() {
        super.viewDidLoad()
        
        stack.addArrangedSubview(textField1)
        stack.addArrangedSubview(textField2)
        stack.addArrangedSubview(textField3)

        view.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        ])
    }
    
}
