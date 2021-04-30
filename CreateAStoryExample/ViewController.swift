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
        sender.isSelected = !sender.isSelected
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = ""
    }
    
    private func setUpAStory() {
        
           setup()
           changeIndex()
        
        if firstChoiceButton.isSelected {
            storyLabel.text = stories[firstStoryNumber]
        }
        
        else {
            storyLabel.text = stories[secondStoryNumber]
        }
        
    }
    
    private func setup () {
        
        firstChoiceButton.setTitle(choicesInTheStory[firstStoryNumber], for: .selected)
        
        secondChoiceButton.setTitle(choicesInTheStory[secondStoryNumber], for: .selected)
        
    }
    
    private func changeIndex () {
        
        if storyLabel.text != "" && firstStoryNumber < stories.count && secondStoryNumber < stories.count && firstStoryNumber != secondStoryNumber {
            
            firstStoryNumber = secondStoryNumber + 1
            secondStoryNumber = firstStoryNumber + 1
            
        }
     
        else if (storyLabel.text == stories[firstStoryNumber] || storyLabel.text == stories[secondStoryNumber]) && (firstChoiceButton.isSelected || secondChoiceButton.isSelected) {
            
            firstStoryNumber = 0
            secondStoryNumber = 1
        }
      
        else if storyLabel.text == "" {
           
            firstStoryNumber = 0
            secondStoryNumber = 1
        }
    }
    
}
