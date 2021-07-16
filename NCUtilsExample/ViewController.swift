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
        textField.placeholder = "Standard"
        textField.activeBorderColor = UIColor.white.cgColor
        textField.backgroundColor = .systemGray2
        return textField
    }()
    
    let textField2: NCEmailTextField = {
        let textField = NCEmailTextField()
        textField.placeholder = "Email"
        textField.backgroundColor = .systemGray2
        return textField
    }()
    
    let textField3: NCPasswordTextField = {
        let textField = NCPasswordTextField()
        textField.placeholder = "Password"
        textField.backgroundColor = .systemGray2
        return textField
    }()
    
    let textField4: NCPriceTextField = {
        let textField = NCPriceTextField()
        textField.placeholder = "Price"
        textField.setText(with: 3.0)
        textField.backgroundColor = .systemGray2
        return textField
    }()
    
    let textView1: NCTextView = {
        let textView = NCTextView()
        textView.placeholder = "Description"
        textView.text = "This is my description"
        textView.backgroundColor = .systemGray2
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
        
        view.backgroundColor = .systemGray
        
        stack.addArrangedSubviews([textField1, textField2, textField3, textField4])
        view.addSubviews([stack, textView1])
        
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
