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
        
        switch Bool() {
        
        case firstStoryNumber < choicesInTheStory.count - 2, secondStoryNumber < choicesInTheStory.endIndex, firstChoiceButton.isSelected :
           
            storyLabel.text = stories[firstStoryNumber]
            firstStoryNumber = secondStoryNumber + 1
            secondStoryNumber = firstStoryNumber + 1
           
            firstChoiceButton.setTitle(choicesInTheStory[firstStoryNumber], for: .normal)
            secondChoiceButton.setTitle(choicesInTheStory[secondStoryNumber], for: .normal)
        
        case firstStoryNumber < choicesInTheStory.count - 2, secondStoryNumber < choicesInTheStory.endIndex, secondChoiceButton.isSelected:
          
            storyLabel.text = stories[secondStoryNumber]
            firstStoryNumber = secondStoryNumber + 1
            secondStoryNumber = firstStoryNumber + 1
            
            firstChoiceButton.setTitle(choicesInTheStory[firstStoryNumber], for: .normal)
            secondChoiceButton.setTitle(choicesInTheStory[secondStoryNumber], for: .normal)
            
        case firstStoryNumber == choicesInTheStory.count-2, secondStoryNumber == choicesInTheStory.endIndex, firstChoiceButton.isSelected:
            storyLabel.text = stories[firstStoryNumber]
            
        case firstStoryNumber == choicesInTheStory.count-2, secondStoryNumber == choicesInTheStory.endIndex, secondChoiceButton.isSelected:
            storyLabel.text = stories[secondStoryNumber]
       
        default:
           break
        }
    }

}
