//
//  MMButton.swift
//  MuscleMe
//
//  Created by Ethan Reinhart on 5/14/23.
//

import UIKit

class MMButton: UIButton {
    required init?(coder: NSCoder) {
        fatalError("init() has not been created")
    }
    let standard : UIColor = .purple
    var color: UIColor
    var goal: Goal
    let name : String
    init(color: UIColor = .purple, title: String, goal: Goal = Goal(), icon: String = "", muscle : Muscles = Muscles()){
        self.color = color
        self.goal = goal
        self.name = goal.name
        super.init(frame:.zero)
        configuration = .tinted()
        configuration?.title = title
        if icon != ""{
            configuration?.image = UIImage(systemName: icon)
        }
        configuration?.cornerStyle = .dynamic
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .trailing
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = color
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    func changeColor(){
        if self.color != standard {
            configuration?.baseBackgroundColor = .purple
            self.color = .purple
        }
        else {
            configuration?.baseBackgroundColor = .systemPink
            self.color = .systemPink
        }
    }
    
    func returnColor()->UIColor{
        return self.color
    }
}
