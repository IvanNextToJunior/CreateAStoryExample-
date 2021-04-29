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
        
       
    
}

    private func setup () {
       
        if firstChoiceButton.isSelected || secondChoiceButton.isSelected {
            firstChoiceButton.setTitle(<#T##title: String?##String?#>, for: <#T##UIControl.State#>)
        }
    }

}
