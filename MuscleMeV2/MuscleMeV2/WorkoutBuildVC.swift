//
//  WorkoutBuildVC.swift
//  MuscleMe
//
//  Created by Ethan Reinhart on 5/7/23.
//

import UIKit

class WorkoutBuildVC: UIViewController {
    
    let workoutButton = MMButton(color: .purple, title: "Workout Builder", icon: "figure.strengthtraining.traditional")
    let introText = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureIntroText()
        configureWorkoutButton()
    }
    
    func configureIntroText() {
        view.addSubview(introText)
        introText.translatesAutoresizingMaskIntoConstraints = false
        introText.text = "Welcome to your best workout!\nPlease select an option."
        introText.font = .systemFont(ofSize: 20, weight: .semibold)
        introText.numberOfLines = 0
        introText.lineBreakMode = .byWordWrapping
        introText.textAlignment = .center
        
        NSLayoutConstraint.activate([
            introText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            introText.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 6.0),
            introText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:30),
            introText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-30),
            
            
        ])
        
    }
    
    func configureWorkoutButton() {
        view.addSubview(workoutButton)
        workoutButton.addTarget(self, action: #selector(buildWorkout), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            workoutButton.widthAnchor.constraint(equalToConstant: 230),
            workoutButton.heightAnchor.constraint(equalToConstant: 50),
            workoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            workoutButton.topAnchor.constraint(equalTo: introText.bottomAnchor, constant: 80)
        ])
        
    }
     
    @objc func buildWorkout() {
        //self.navigationController?.pushViewController(BuildVC(), animated: true)
        present(BuildVC(), animated:true)
    }
    
/*
 import UIKit

 class ViewController: UIViewController {
     override func viewDidLoad() {
         super.viewDidLoad()
     }
 }
 */
}
