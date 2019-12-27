//
//  ViewController.swift
//  Destini
//
//  Created by Francisco Hernandez on 12/26/19.
//  Copyright © 2019 Francisco Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    
    @IBOutlet weak var choice1Button: UIButton!
    
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    //let story0 = "You see a fork on the road"
    //let choice1 = "Take a left"
    //let choice2 = "Take a right"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
       
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle("Take a left", for: .normal)
        choice2Button.setTitle("Take a right", for: .normal)
    }
    
}

