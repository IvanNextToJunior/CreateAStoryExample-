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
    
    private let constant = Constants()
    @IBOutlet weak var storyLabel: UILabel!
    
    @IBOutlet weak var firstChoiceButton: UIButton!
    
    @IBOutlet weak var secondChoiceButton: UIButton!
    
    @IBAction func chooseAStoryAction(_ sender: UIButton) {
        
        setUpAStory()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstChoiceButton.setTitle(constant.storyOptions[0], for: .normal)
        secondChoiceButton.setTitle(constant.storyOptions[1], for: .normal)
        storyLabel.text = "Story"
    }
    
    
    private func setUpAStory() {
        
        switch Bool() {
        
        case firstChoiceButton.isSelected:
            
            storyLabel.text = constant.stories[firstStoryNumber]
            
            if firstStoryNumber < constant.storyOptions.endIndex - 1, secondStoryNumber < constant.storyOptions.endIndex {
                
                firstStoryNumber = secondStoryNumber + 1
                secondStoryNumber = firstStoryNumber + 1
            }
            
            else {
                
                firstStoryNumber = constant.storyOptions.endIndex - 1
                secondStoryNumber = constant.storyOptions.endIndex
            }
            
            firstChoiceButton.setTitle(constant.storyOptions[firstStoryNumber], for: .normal)
            secondChoiceButton.setTitle(constant.storyOptions[secondStoryNumber], for: .normal)
            
        case secondChoiceButton.isSelected:
            
            storyLabel.text = constant.stories[secondStoryNumber]
            
            if firstStoryNumber < constant.storyOptions.endIndex - 1, secondStoryNumber < constant.storyOptions.endIndex {
                
                firstStoryNumber = secondStoryNumber + 1
                secondStoryNumber = firstStoryNumber + 1
                
            }
            
            else {
                
                firstStoryNumber = constant.storyOptions.endIndex - 1
                secondStoryNumber = constant.storyOptions.endIndex
            }
            
            firstChoiceButton.setTitle(constant.storyOptions[firstStoryNumber], for: .normal)
            secondChoiceButton.setTitle(constant.storyOptions[secondStoryNumber], for: .normal)
            
        default:
          
            firstStoryNumber = 0
            secondStoryNumber = 1
            firstChoiceButton.setTitle(constant.storyOptions[firstStoryNumber], for: .normal)
            secondChoiceButton.setTitle(constant.storyOptions[secondStoryNumber], for: .normal)
        }
        
        
        
    }
    
}
