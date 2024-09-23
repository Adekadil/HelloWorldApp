//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by FIskalinov on 20.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    let aButton : UIButton = {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(showInLabel), for: .touchUpInside)
            return button
        
        }()
    
    @objc func showInLabel() {
        aLabel.text = "I hope to get 100."
    }
    
    let aLabel : UILabel = {
        
        let label = UILabel()
        label.textColor = . white
        label.backgroundColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20 )
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
        
    }()

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        
        view.addSubview(aButton)
        view.addSubview(aLabel)
                
        aButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        aButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        aButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        aButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        aButton.topAnchor.constraint(equalTo: aLabel.bottomAnchor, constant: 10).isActive = true
        
        aLabel.centerXAnchor.constraint(equalTo: aButton.centerXAnchor).isActive = true
        aLabel.widthAnchor.constraint(equalTo: aButton.widthAnchor).isActive = true
        aLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        super.viewDidLoad()
        print("Hello, world!")
    }


    @IBAction func makeSomeGreeting(_ sender: Any) {
        
    }
}

