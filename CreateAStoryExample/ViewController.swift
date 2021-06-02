//
//  ViewController.swift
//  CreateAStoryExample
//
//  Created by Ivan on 28.04.2021.
//

import UIKit


class ViewController: UIViewController {
    
    ///Индексы для словаря
    private var firstStoryNumber = 0
    private var secondStoryNumber = 1
    
    @IBOutlet weak var storyLabel: UILabel!
    
    @IBOutlet weak var firstChoiceButton: UIButton!
    
    @IBOutlet weak var secondChoiceButton: UIButton!
    
    @IBAction func chooseAStoryAction(_ sender: UIButton) {
        
        setUpAStory()
        sender.isSelected.toggle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstChoiceButton.setTitle(choicesInTheStory[0], for: .normal)
        secondChoiceButton.setTitle(choicesInTheStory[1], for: .normal)
        storyLabel.text = "Story"
    }
    
    private func setUpAStory() {
        
        storyLabel.text = firstChoiceButton.isEnabled ? stories[firstStoryNumber] : stories[secondStoryNumber]
       
        if firstStoryNumber < choicesInTheStory.count - 2, secondStoryNumber < choicesInTheStory.endIndex {
            firstStoryNumber = secondStoryNumber + 1
            secondStoryNumber = firstStoryNumber + 1
        }
        else if firstStoryNumber == choicesInTheStory.endIndex-1, secondStoryNumber == choicesInTheStory.endIndex, firstChoiceButton.isEnabled || secondChoiceButton.isEnabled {
            
            storyLabel.text = firstChoiceButton.isEnabled ? stories[firstStoryNumber] : stories[secondStoryNumber]
            firstStoryNumber = 0
            secondStoryNumber = 1
        }
        else {
            firstStoryNumber = 0
            secondStoryNumber = 1
            storyLabel.text = "The end"
        }
        firstChoiceButton.setTitle(choicesInTheStory[firstStoryNumber], for: .normal)
        secondChoiceButton.setTitle(choicesInTheStory[secondStoryNumber], for: .normal)
        
      
        
        
        
    }
}
