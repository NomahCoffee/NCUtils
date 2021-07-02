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
        return textField
    }()
    
    let textField2: NCEmailTextField = {
        let textField = NCEmailTextField()
        textField.placeholder = "Email"
        return textField
    }()
    
    let textField3: NCPasswordTextField = {
        let textField = NCPasswordTextField()
        textField.placeholder = "Password"
        return textField
    }()
    
    let textField4: NCPriceTextField = {
        let textField = NCPriceTextField()
        textField.placeholder = "Price"
        return textField
    }()
    
    let textView1: NCTextView = {
        let textView = NCTextView()
        textView.placeholder = "Description"
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
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
        stack.addArrangedSubview(textField4)
        
        view.addSubview(stack)
        view.addSubview(textView1)
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        ])
        
        NSLayoutConstraint.activate([
            textView1.topAnchor.constraint(equalTo: stack.bottomAnchor, constant: 8),
            textView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            textView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            textView1.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
}
