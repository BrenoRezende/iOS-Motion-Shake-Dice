//
//  ViewController.swift
//  Dicee
//
//  Created by Breno Rezende on 16/07/19.
//  Copyright © 2019 Brezende. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceImageArray = [ #imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6") ]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollAndShowDices()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollAndShowDices()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            rollAndShowDices()
        }
    }
    
    fileprivate func rollAndShowDices() {
        let diceService = DiceService()
        diceImageView1.image = diceImageArray[diceService.roll(0...5).face]
        diceImageView2.image = diceImageArray[diceService.roll(0...5).face]
    }
    
}

