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
        storyLabel.text = "Story"
    }
    
    private func setUpAStory() {
        
        if firstChoiceButton.isSelected {
           
            firstChoiceButton.setTitle(choicesInTheStory[firstStoryNumber], for: .normal)
            secondChoiceButton.setTitle(choicesInTheStory[secondStoryNumber], for: .normal)
            
            storyLabel.text = stories[firstStoryNumber]
            
            firstStoryNumber = secondStoryNumber + 1
                secondStoryNumber = firstStoryNumber + 1
        }
        
      else if secondChoiceButton.isSelected {
       
        secondChoiceButton.setTitle(choicesInTheStory[secondStoryNumber], for: .normal)
        firstChoiceButton.setTitle(choicesInTheStory[firstStoryNumber], for: .normal)
        
        storyLabel.text = stories[secondStoryNumber]
        
        firstStoryNumber = secondStoryNumber + 1
            secondStoryNumber = firstStoryNumber + 1
      }
      
        if secondStoryNumber == choicesInTheStory.count - 1 && (secondChoiceButton.isSelected || firstChoiceButton.isSelected) {
           
            firstStoryNumber = 0
            secondStoryNumber = 1
            storyLabel.text = firstChoiceButton.isSelected ? stories[firstStoryNumber] : stories[secondStoryNumber]
        }
        
    }
    

}
