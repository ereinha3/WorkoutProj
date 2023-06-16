//
//  BuildVC.swift
//  MuscleMeV2
//
//  Created by Ethan Reinhart on 5/14/23.
//

import UIKit

class BuildVC: UIViewController {

    let buildText = UILabel()
    let strength = MMButton(color: .purple, title: "Strength : Low Reps", goal: Strength())
    let hypertrophy = MMButton(color: .purple, title: "Hypertrophy : Average Reps", goal: Hypertrophy())
    let hiit = MMButton(color: .purple, title: "HIIT : High Reps", goal: Hiit())
    let mobility = MMButton(color: .purple, title: "Mobility and Flexibility", goal: Mobility())
    let build = MMButton(color: .purple, title: "Continue to select muscles groups", icon: "arrow.right")
    let base = MMButton(color: .white, title: "Empty")
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureBuildText()
        configureButtons()
        configureBuild()
    }
    
    func configureBuildText() {
        view.addSubview(buildText)
        buildText.translatesAutoresizingMaskIntoConstraints = false
        buildText.text = "Please select your workout goals."
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
    
    func configureButtons(){
        let buttons : [MMButton] = [strength, hypertrophy, hiit, mobility]
        var previous : MMButton = base
        for button in buttons{
            view.addSubview(button)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(selected(_:)), for: .touchUpInside)
            NSLayoutConstraint.activate([
                button.widthAnchor.constraint(equalToConstant: 230),
                button.heightAnchor.constraint(equalToConstant: 50),
                button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ])
            if previous == base {
                NSLayoutConstraint.activate([
                    button.topAnchor.constraint(equalTo: buildText.bottomAnchor, constant: 60)
                ])
            }
            else {
                NSLayoutConstraint.activate([
                    button.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 80)
                ])
            }
            previous = button
        }
    }
    
    func configureBuild(){
        view.addSubview(build)
        build.translatesAutoresizingMaskIntoConstraints = false
        build.addTarget(self, action: #selector(MSVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            build.widthAnchor.constraint(equalToConstant: 230),
            build.heightAnchor.constraint(equalToConstant: 50),
            build.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            build.topAnchor.constraint(equalTo: mobility.bottomAnchor, constant: 60)
        ])
    }
    
    func saveGoals()->[Goal]{
        let goal_buttons : [MMButton] = [strength, hypertrophy, hiit, mobility]
        var goal_list : [Goal] = []
        for button in goal_buttons {
            if button.returnColor() == .systemPink {
                goal_list.append(button.goal)
            }
        }
        return goal_list
    }
    
    
    @objc func selected(_ sender: MMButton){
        sender.changeColor()
    }
    
    @objc func MSVC(){
        let saved = saveGoals()
        if saved.count != 0 {
            goals_generated.goals = saved
            present(MuscleSelectorVC(), animated:true)
        }
    }
    
    
}
