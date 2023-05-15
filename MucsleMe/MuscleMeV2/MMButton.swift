//
//  MMButton.swift
//  MuscleMe
//
//  Created by Ethan Reinhart on 5/14/23.
//

import UIKit

class MMButton: UIButton {
    override init(frame: CGRect){
        super.init(frame:frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init() has not been created")
    }
    
    init(color: UIColor, title: String, icon: String){
        super.init(frame:.zero)
        configuration = .tinted()
        configuration?.title = title
        configuration?.image = UIImage(systemName: icon)
        configuration?.cornerStyle = .dynamic
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .trailing
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = color
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}
