//
//  GoalGroups.swift
//  MuscleMeV2
//
//  Created by Ethan Reinhart on 6/2/23.
//

import Foundation

var goals_generated = Goals()

class Goals {
    var goals : [Goal]
    init(goals: [Goal] = []){
        self.goals = goals
    }
}
class Goal {
    var name : String
    init(){
        self.name = "Null"
    }
    
}

class Strength : Goal {
    var description : String
    override init() {
        self.description = "Strength training aims to build the greatest amount of muscle mass. The focus of this excercise should be in the 4-6 rep range. You should load a weight so that you will be able to complete this amount of reps until failure. Make sure to rest for at least a minute in between sets, preferably upwards of three minutes."
        super.init()
        self.name = "Strength"
    }
}
class Hypertrophy: Goal{
    var description : String
    override init() {
        self.description = "Hypertrophy training works to create muscle mass while still burning fat. The focus of this excercise should be in the 8-10 rep range. You should load a weight so that you will be able to complete this amount of reps until failure. Make sure to rest for around a minute in between sets in order to optimize performance in your next set."
        super.init()
        self.name = "Hypertrophy"
    }
}
class Hiit: Goal {
    var description : String
    override init() {
        self.description = "HIIT training works to improve muscle definition with high amounts of fat-burning cardio. The focus of this excercise should be in the 12-20 rep range. You should load less weight than you would with another focus so that you will be able to complete this amount of reps until exhaustion. Make sure to rest for at most a minute in between sets in order to keep your heart rate up and maximize fat loss."
        super.init()
        self.name = "Hiit"
    }
}
class Mobility: Goal {
    var description : String
    override init() {
        self.description = "The goal of mobility training is to both decrease likelihood of injury and improve overall flexibility as well as mind-muscle connection. You should be pushing yourself to where you feel uncomfortable but not in pain. Putting yourself in a painful position will hurt your tendons and joints and detriment future workouts while being uncomfortable segways to improved flexibility. You should hold each pose for around 30 seconds or until you experience a moderate amount of discomfort. The longer you hold these positions, the more beneficial but you will notice soreness and decreased muscle strength the next day."
        super.init()
        self.name = "Mobility"
    }
}
