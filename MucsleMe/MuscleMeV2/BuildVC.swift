//
//  BuildVC.swift
//  MuscleMeV2
//
//  Created by Ethan Reinhart on 5/14/23.
//

import UIKit

class BuildVC: UIViewController {

    let buildText = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureBuildText()
    }
    
    func configureBuildText() {
        view.addSubview(buildText)
        buildText.translatesAutoresizingMaskIntoConstraints = false
        buildText.text = "Please enter the muscle groups you would like to excercise."
        buildText.font = .systemFont(ofSize: 20, weight: .semibold)
        buildText.numberOfLines = 0
        buildText.lineBreakMode = .byWordWrapping
        buildText.textAlignment = .center
        
        NSLayoutConstraint.activate([
            buildText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buildText.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 6.0),
            buildText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:30),
            buildText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-30),
            
            
        ])
        
    }

}
