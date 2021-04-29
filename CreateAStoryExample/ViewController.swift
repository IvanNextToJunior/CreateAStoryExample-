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


    private func setUpAStory() {
        
        if firstChoiceButton.isSelected && firstStoryNumber < storyNamesArray.count-1 {
            
            storyLabel.text = storyNamesArray[firstStoryNumber]
            
            firstChoiceButton.setTitle(storyFormatChoices[firstStoryNumber], for: .selected)
            secondChoiceButton.setTitle(storyFormatChoices[secondStoryNumber], for: .selected)
        }
        
        else if secondChoiceButton.isSelected && secondStoryNumber < storyNamesArray.count && secondStoryNumber > firstStoryNumber {
            
        
            storyLabel.text = storyNamesArray[secondStoryNumber]
            
            firstChoiceButton.setTitle(storyFormatChoices[firstStoryNumber], for: .selected)
            secondChoiceButton.setTitle(storyFormatChoices[secondStoryNumber], for: .selected)
        }
        
        else {
            
            storyLabel.text = ""
            firstStoryNumber = 0
            secondStoryNumber = 1
            
            firstChoiceButton.setTitle(storyFormatChoices[firstStoryNumber], for: .selected)
            secondChoiceButton.setTitle(storyFormatChoices[secondStoryNumber], for: .selected)
            
           
            
        }
        
        firstStoryNumber = secondStoryNumber + 1
        secondStoryNumber = firstStoryNumber + 1
        
        
    }
    
}




