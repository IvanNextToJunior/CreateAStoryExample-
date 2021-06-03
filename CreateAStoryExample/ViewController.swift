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
        if firstChoiceButton.isSelected && sender === firstChoiceButton {
        setUpAStory()
        }
        
        if secondChoiceButton.isSelected && sender === secondChoiceButton {
            setUpAStory()
        }
        sender.isSelected.toggle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstChoiceButton.setTitle(constant.storyOptions[0], for: .normal)
        secondChoiceButton.setTitle(constant.storyOptions[1], for: .normal)
        storyLabel.text = "Story"
    }
    
    
    private func setUpAStory() {
        
        storyLabel.text = firstChoiceButton.isSelected ? constant.stories[firstStoryNumber] : constant.stories[secondStoryNumber]
      
        if firstStoryNumber < constant.storyOptions.endIndex - 2, secondStoryNumber < constant.storyOptions.endIndex - 1 {
                
                firstStoryNumber = secondStoryNumber + 1
                secondStoryNumber = firstStoryNumber + 1
            }
            
            else {
                
                firstStoryNumber = constant.storyOptions.endIndex - 2
                secondStoryNumber = constant.storyOptions.endIndex - 1
            }
            
            firstChoiceButton.setTitle(constant.storyOptions[firstStoryNumber], for: .normal)
            secondChoiceButton.setTitle(constant.storyOptions[secondStoryNumber], for: .normal)
            
    }
    
}
