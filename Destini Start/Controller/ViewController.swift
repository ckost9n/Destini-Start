//
//  ViewController.swift
//  Destini Start
//
//  Created by Konstantin on 31.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var choice1Button: UIButton!
    @IBOutlet var choice2Button: UIButton!
    
    private var storyBrain = StotyBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        updateUI()
    }
    
    private func setupUI() {
        choice1Button.layer.cornerRadius = 20
        choice2Button.layer.cornerRadius = 20
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        guard let choice = sender.currentTitle else {
            print("error Current Title")
            return
        }
        
        storyBrain.choiceNext(choice)
        
        updateUI()
    }
    
    private func updateUI() {
        storyLabel.text = storyBrain.getStory()
        choice1Button.setTitle(storyBrain.getChoice().choice1, for: .normal)
        choice2Button.setTitle(storyBrain.getChoice().choice2, for: .normal)
    }
    
}

