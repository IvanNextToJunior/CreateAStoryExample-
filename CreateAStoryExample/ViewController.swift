//
//  ViewController.swift
//  CreateAStoryExample
//
//  Created by Ivan on 28.04.2021.
//

import UIKit


class ViewController: UIViewController {
    
    let storyNamesArray = ["Jungle book", "Once upon a time", "Perks of Being a Walflower", "Blue Lagoon", "Spider Man", "Iron Man"]

    let storyFormatChoices = ["Listen to Jungle Book story", "Listen to Once upon a time story", "Listen to Perks of being a Walflower story", "Read Blue Lagoon", "Read Spider Man","Watch Iron Man"]
    
    @IBOutlet weak private var storyLabel: UILabel!
    
    @IBOutlet weak private var firstChoiceButton: UIButton!
    
    @IBOutlet weak private var secondChoiceButton: UIButton!
    
    @IBAction private func chooseAStoryAction(_ sender: UIButton) {
      
        if sender.isSelected {
            setUp()
        }
       
        sender.isSelected = !sender.isSelected
    }
    
    private func setUp () {
        
        for i in 0...storyNamesArray.count-1 {
            storyLabel.text = storyNamesArray[i]
        }
        
        for j in 0...storyFormatChoices.count-2 {
            firstChoiceButton.setTitle(storyFormatChoices[j], for: .normal)
            secondChoiceButton.setTitle(storyFormatChoices[j+1], for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    
  

   }
   
   
    
    




