//
//  RulesVC.swift
//  Card Workout Program
//
//  Created by Ethan Reinhart on 5/13/23.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let excerciseLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureExcerciseLabel()
        // Do any additional setup after loading the view.
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-30)
        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of excercises you do. \n\nJ = 11, Q = 12, K = 13, A = 14"
        rulesLabel.textAlignment = .center
        rulesLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-30)
        ])
    }
    
    func configureExcerciseLabel() {
        view.addSubview(excerciseLabel)
        excerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        excerciseLabel.text = "♠️ = Pushups\n\n♥️ = Situps\n\n♣️ = Burpees\n\n♦️ = Jumping Jacks"
        excerciseLabel.textAlignment = .left
        excerciseLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        excerciseLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            excerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 60),
            excerciseLabel.widthAnchor.constraint(equalToConstant: 200 ),
            excerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
