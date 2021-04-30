//
//  ViewController.swift
//  CreateAStoryExample
//
//  Created by Ivan on 28.04.2021.
//

import UIKit


class ViewController: UIViewController {
    
    ///Индексы для словаря
    private var firstStoryNumber = Int()
    private var secondStoryNumber = Int()
    
    @IBOutlet weak var storyLabel: UILabel!
    
    @IBOutlet weak var firstChoiceButton: UIButton!
    
    @IBOutlet weak var secondChoiceButton: UIButton!
    
    @IBAction func chooseAStoryAction(_ sender: UIButton) {
        
        
        setUpAStory()
        sender.isSelected = !sender.isSelected
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstChoiceButton.setTitle(choicesInTheStory[0], for: .normal)
        secondChoiceButton.setTitle(choicesInTheStory[1], for: .normal)
        storyLabel.text = ""
    }
    
    private func setUpAStory() {
        
        if firstChoiceButton.isSelected {
            
            storyLabel.text = stories[firstStoryNumber]
        }
        
        else {
            
            storyLabel.text = stories[secondStoryNumber]
        }
        
        changeButtonTitle()
        
    }
    
    private func changeButtonTitle () {
        
        firstStoryNumber = 0
        secondStoryNumber = 1
        
        if firstStoryNumber < stories.count, secondStoryNumber < stories.count, firstStoryNumber < secondStoryNumber {
            
            firstStoryNumber = secondStoryNumber + 1
            secondStoryNumber = firstStoryNumber + 1
        }
        
        else {
            
            firstStoryNumber = 0
            secondStoryNumber = 1
        }
        
        firstChoiceButton.setTitle(choicesInTheStory[firstStoryNumber], for: .normal)
        
        secondChoiceButton.setTitle(choicesInTheStory[secondStoryNumber], for: .normal)
    }
    
}
