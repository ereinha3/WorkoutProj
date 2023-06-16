//
//  ExcerciseList.swift
//  MuscleMeV2
//
//  Created by Ethan Reinhart on 6/2/23.
//

import Foundation

class Excercise {
    var form : String
    var excercise_name : String
    var focus : [Goal]
    init(form: String = "", name: String = "", input_focus: Goals){
        self.form = form
        self.excercise_name = name
        self.focus = input_focus.goals
    }
}

var LatPulldown = Excercise(form: "Stand up and grab the bar with palms facing each other before lowering yourself back down. Pull the bar down towards your chest in a smooth and controlled movement by driving down your elbows and squeezing your lats together. Once the bar is in line with your chest, slowly release the bar back to the starting position.", name: "Lat Pulldown", input_focus: Goals(goals: [Strength(), Hypertrophy()]))

var BarbellBenchPress = Excercise(form: "Lie on the bench with your eyes under the bar. Grab the bar with a medium grip-width (thumbs around the bar!). Unrack the bar by straightening your arms. Lower the bar to your mid-chest. Press the bar back up until your arms are straight. Hold the weight for a second at the top, with straight arms. Breathe. Then take a big breath, hold it, and lower the bar again. Keep your butt on the bench when you press it back up.", name: "Barbell Bench Press", input_focus: Goals(goals: [Strength(), Hypertrophy()]))
