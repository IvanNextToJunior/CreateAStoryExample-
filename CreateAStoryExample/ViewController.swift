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
  
    }
    
//   private func createADictionary ()  -> [String: String] {
//
//    var dict: [String: String] = [:]
//
//        for storyChoice in 0...storyFormatChoices.count-1 {
//
//            for storyName in 0...storyNamesArray.count-1 {
//
//                let endOfAStory = storyFormatChoices[storyChoice]
//                let story = storyNamesArray[storyName]
//
//                if  endOfAStory == story {
//                    dict.updateValue(endOfAStory, forKey: story)
//                }
//            }
//        }
//   return dict
//
//   }
    private func setUpAStory() {
        
     
        if firstChoiceButton.isSelected && firstStoryNumber <= 3 || firstStoryNumber == 0{
    
            storyLabel.text = storyNamesArray[firstStoryNumber]
            
            firstChoiceButton.setTitle(storyFormatChoices[firstStoryNumber], for: .selected)
            secondChoiceButton.setTitle(storyFormatChoices[secondStoryNumber], for: .selected)
            
            
        }
        
        else if secondChoiceButton.isSelected && secondStoryNumber <= 4 || secondStoryNumber == 1 {
           secondStoryNumber += 1
            storyLabel.text = storyNamesArray[secondStoryNumber]
            firstChoiceButton.setTitle(storyFormatChoices[firstStoryNumber], for: .selected)
            secondChoiceButton.setTitle(storyFormatChoices[secondStoryNumber], for: .selected)
        }
       
        else if  firstStoryNumber >= 5 || secondStoryNumber >= 6{
          
            firstChoiceButton.setTitle("Choice A", for: .normal)
            secondChoiceButton.setTitle("Choice B", for: .normal)
            storyLabel.text = ""
      
        }
        
        firstStoryNumber = secondStoryNumber + 1
        secondStoryNumber = firstStoryNumber + 1
       
       
    }
   
    
    }




