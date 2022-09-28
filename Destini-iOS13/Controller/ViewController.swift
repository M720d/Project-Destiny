//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choicePressed(_ sender: UIButton) {
         
        let userAnswer = sender.currentTitle
        storyBrain.getNextQuestion(userAnswer!)
        updateUI()
//        print(userAnswer)
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getStoryOnLoad()
        choice1Button.setTitle(storyBrain.getchoice1OnLoad(), for: .normal)
        choice2Button.setTitle(storyBrain.getchoice2OnLoad(), for: .normal)
    }
}

