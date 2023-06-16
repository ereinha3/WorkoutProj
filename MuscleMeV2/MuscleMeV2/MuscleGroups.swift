//
//  MuscleGroups.swift
//  MuscleMeV2
//
//  Created by Ethan Reinhart on 5/20/23.
//

import UIKit
let muscle_groups : [Muscles] = [Chest(), Back()]//, Biceps(), Triceps(), Legs(), Core(), Shoulders()]
var muscles_selected : [Muscles] = []

class Muscles {
    var name : String
    init() {
        self.name = ""
    }
}


class Chest: Muscles {
    var groups : [Muscles]
    override init() {
        self.groups = [PectoralisMajor(), PectoralisMinor()]
        super.init()
        self.name = "Chest"
    }
}
class PectoralisMajor: Chest {
    var excercises : [Excercise]
    override init() {
        self.excercises = [BarbellBenchPress]
        super.init()
        self.name = "Pectoralis Major"
    }
}

class PectoralisMinor: Chest {
    var excercises : [Excercise]
    override init() {
        self.excercises = [BarbellBenchPress]
        super.init()
        self.name = "Pectoralis Minor"
    }
}


class Back: Muscles {
    var groups = [Trapezius(), latissimusDorsi(), teresMajor(), teresMinor(), serratusAnterior(), erectorSpinae()]
    override init() {
        super.init()
        self.name = "Back"
    }
}

class Trapezius: Back{
    var excercises : [Excercise]
    override init() {
        self.excercises = [LatPulldown]
        super.init()
        self.name = "Trapezius"
    }
}

class latissimusDorsi: Back{
    var excercises : [Excercise]
    override init() {
        self.excercises = [LatPulldown]
        super.init()
        self.name = "Latissimus Dorsi"
    }
}

class teresMajor: Back{
    var subname = "Teres Major"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}
class teresMinor: Back{
    var subname = "Teres Minor"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}
class serratusAnterior: Back{
    var subname = "Serratus Anterior"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}
class erectorSpinae: Back{
    var subname = "Erector Spinae"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}

/*
class Triceps: Muscles {
    var specifics: [Muscles]
    init(specifics: [Muscles]) {
        self.specifics = [tlongHead(), medialHead(), lateralHead()]
    }
}
class tlongHead: Triceps{
    var subname = "Long Head"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}
class medialHead: Triceps{
    var subname = "Medial Head"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}
class lateralHead: Triceps{
    var subname = "Lateral Head"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}


class Biceps: Muscles {
    var specifics : [Muscles]
    init(specifics: [Muscles] = [Muscles()]) {
        self.specifics = [shortHead(), blongHead()]
    }
}
class shortHead: Biceps{
    var subname = "Short Head"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}
class blongHead: Biceps{
    var subname = "Long Head"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}


class Legs: Muscles {
    var specifics : [Muscles]
    init(specifics: [Muscles] = [Muscles()]) {
        self.specifics = [Quad(), Hamstring(), Calves(), Glutes()]
    }
}
class Quad: Legs {
    var subname = "Quad"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}
class Hamstring: Legs {
    var subname = "Hamstring"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}
class Calves: Legs{
    var subname = "Calves"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}
class Glutes:Legs{
    var subname = "Glutes"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}


class Core: Muscles {
    var specifics : [Muscles]
    init(specifics: [Muscles] = [Abs(), Obliques()]) {
        self.specifics = specifics
    }
}
class Abs: Core{
    var subname = "Abs"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}
class Obliques: Core{
    var subname = "Obliques"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}


class Shoulders: Muscles {
    var specifics : [Muscles]
    init(specifics: [Muscles] = [Deltoids(), rotatorCuff()]) {
        self.specifics = specifics
    }
}
class Deltoids: Shoulders{
    var subname = "Deltoids"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}
class rotatorCuff: Shoulders{
    var subname = "Rotator Cuff"
    var excercises : [Excercise]
    init(excercises: [Excercise] = [LatPulldown]){
        self.excercises = excercises
    }
}
 */





