//
//  ViewController.swift
//  Homework_16
//
//  Created by Алексей Шевченко on 02.02.2023.
//

import UIKit

class ViewController: UIViewController {

    private let labelHelloIOS: UILabel = {
        let label = UILabel()
        label.text = "Hello, IOS!"
        label.textColor = .black
        label.contentMode = .center
        return label
    }()
    
    private let labelHelloSwift: UILabel = {
        let label = UILabel()
        label.text = "Hello, Swift!"
        label.textColor = .black
        label.contentMode = .center
        return label
    }()
    
    private let labelHelloGit: UILabel = {
        let label = UILabel()
        label.text = "Hello, Git!"
        label.textColor = .black
        label.contentMode = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        addElementsSubview()
        setupConstraints()
    }

    private func addElementsSubview() {
        view.addSubview(labelHelloIOS)
        view.addSubview(labelHelloSwift)
        view.addSubview(labelHelloGit)
    }
    
    private func setupConstraints() {
        labelHelloIOS.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        labelHelloIOS.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70).isActive = true
        labelHelloIOS.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70).isActive = true
        labelHelloIOS.translatesAutoresizingMaskIntoConstraints = false
        
        labelHelloSwift.topAnchor.constraint(equalTo: labelHelloIOS.bottomAnchor, constant: 200).isActive = true
        labelHelloSwift.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70).isActive = true
        labelHelloSwift.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70).isActive = true
        labelHelloSwift.translatesAutoresizingMaskIntoConstraints = false
        
        labelHelloGit.topAnchor.constraint(equalTo: labelHelloSwift.bottomAnchor, constant: 200).isActive = true
        labelHelloGit.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70).isActive = true
        labelHelloGit.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70).isActive = true
        labelHelloGit.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
}

