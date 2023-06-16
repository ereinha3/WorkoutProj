//
//  MuscleSelectorVC.swift
//  MuscleMeV2
//
//  Created by Ethan Reinhart on 5/29/23.
//

import UIKit


class MuscleSelectorVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureGoals()
        //configureScrollView()
        //configureContentView()
        //configuretestText()
        configureMuscleButtons()
        configureSpecifyButton()
        configureContinueButton()
        
        

        // Do any additional setup after loading the view.
    }
    
    let goals_list = UILabel()
    let scrollView = UIScrollView()
    let contentView = UIView()
    let testText = UILabel()
    let backButton = MMButton(title: "Back", muscle: Back())
    let chestButton = MMButton(title: "Chest", muscle: Chest())
    /*
    let tricepsButton = MMButton(title: "Triceps", muscle: Triceps())
    let bicepsButton = MMButton(title: "Biceps", muscle: Biceps())
    let legsButton = MMButton(title: "Legs", muscle: Legs())
    let shouldersButton = MMButton(title: "Shoulders", muscle: Shoulders())
    let coreButton = MMButton(title: "Core", muscle: Core())
    */
    let specifyButton = MMButton(title: "Select Individual Muscles")
    let continueButton = MMButton(title: "Continue")
    
    func configureGoals() {
        view.addSubview(goals_list)
        goals_list.translatesAutoresizingMaskIntoConstraints = false
        goals_list.text = "Please select the muscle groups you would like to hit from the list below.\n\n"
        goals_list.font = .systemFont(ofSize: 16, weight: .semibold)
        goals_list.numberOfLines = 0
        goals_list.lineBreakMode = .byWordWrapping
        goals_list.textAlignment = .center
        
        NSLayoutConstraint.activate([
            goals_list.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goals_list.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            goals_list.bottomAnchor.constraint(equalTo: view.topAnchor, constant:80),
            goals_list.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:30),
            goals_list.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-30),
        ])
    }

    
    
    
    /*func configureScrollView() {
        let item = scrollView
        item.translatesAutoresizingMaskIntoConstraints = false
        item.contentSize.height = CGFloat(1000)
        view.addSubview(item)
        NSLayoutConstraint.activate([
            item.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            item.topAnchor.constraint(equalTo: goals_list.bottomAnchor),
            item.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            item.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
        }
     */
                
   /* func configureContentView() {
        let item = contentView
        item.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(item)
        NSLayoutConstraint.activate([
            item.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            item.topAnchor.constraint(equalTo: scrollView.topAnchor),
            item.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            item.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        ])
    }
    */

    /*func configuretestText() {
        testText.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(testText)
        testText.text = "This\nis\na\nlong\nlist\nthat\nshould\nhopefully\ncover\nthe\nentirety\nof\nthe\npage\n!" + "This\nis\na\nlong\nlist\nthat\nshould\nhopefully\ncover\nthe\nentirety\nof\nthe\npage\n!" + "This\nis\na\nlong\nlist\nthat\nshould\nhopefully\ncover\nthe\nentirety\nof\nthe\npage\n!"
        testText.numberOfLines = 0
        testText.sizeToFit()
        NSLayoutConstraint.activate([
            testText.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            testText.topAnchor.constraint(equalTo: contentView.topAnchor),
            testText.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            testText.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }*/
    
    func configureMuscleButtons(){
        let buttons : [MMButton] = [backButton, chestButton,] //tricepsButton, bicepsButton, legsButton, shouldersButton, coreButton]
        var offset = 20
        for button in buttons{
            view.addSubview(button)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(selected(_:)), for: .touchUpInside)
            NSLayoutConstraint.activate([
                button.widthAnchor.constraint(equalToConstant: 230),
                button.heightAnchor.constraint(equalToConstant: 50),
                button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                button.topAnchor.constraint(equalTo: goals_list.bottomAnchor, constant: CGFloat(offset)),
            ])
            offset = offset + 70
        }
    }
    
    func configureSpecifyButton(){
        view.addSubview(specifyButton)
        specifyButton.translatesAutoresizingMaskIntoConstraints = false
        //specifyButton.addTarget(self, action: #selector(specifier), for: .touchUpInside)
        NSLayoutConstraint.activate([
            specifyButton.widthAnchor.constraint(equalToConstant: 230),
            specifyButton.heightAnchor.constraint(equalToConstant: 50),
            specifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //specifyButton.topAnchor.constraint(equalTo: coreButton.bottomAnchor, constant: 30),
        ])
    }
    
    func configureContinueButton(){
        view.addSubview(continueButton)
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.addTarget(self, action: #selector(continued), for: .touchUpInside)
        NSLayoutConstraint.activate([
            continueButton.widthAnchor.constraint(equalToConstant: 230),
            continueButton.heightAnchor.constraint(equalToConstant: 50),
            continueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            continueButton.topAnchor.constraint(equalTo: specifyButton.bottomAnchor, constant: 30),
        ])
    }
    
    
    /*@objc func specifier(){
        let buttons : [MMButton] = [backButton, chestButton, tricepsButton, bicepsButton, legsButton, shouldersButton, coreButton]
        for button in buttons {
            if button.returnColor() == .systemPink {
                muscles_selected.append(button.name)
            }
        }
        return goal_list
        present(SpecifierVC(), animated: true)
    }
     */
    
    @objc func continued(){
        present(RepSelectorVC(), animated:true)
    }
    
    @objc func selected(_ sender: MMButton){
        sender.changeColor()
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
