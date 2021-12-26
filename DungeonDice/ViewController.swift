//
//  ViewController.swift
//  DungeonDice
//
//  Created by song on 12/26/21.
//  Copyright © 2021 song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // -- Reset the title and result
        resultLabel.text = ""
    }
    
    @IBAction func diceButtonPressed(_ sender: UIButton) {
        
        // -- Get the Tag
        let diceTag = sender.tag
        var rollResult = 0
      
        rollResult = Int.random(in: 1...diceTag)

        let resultText = "You rolled a \(diceTag) dice and got \(rollResult)"
        resultLabel.text = resultText
    }
    
}

