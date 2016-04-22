//
//  ViewController.swift
//  TakeAGuess
//
//  Created by Jai Khanna on 4/21/16.
//  Copyright © 2016 Jai Khanna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var guessSlider: UISlider!
    
    @IBOutlet weak var playerGuess: UILabel!
    
    @IBOutlet weak var playerResult: UILabel!
    
    @IBOutlet weak var playButton: UIButton!
    
    var guessValue: Int = 0
    
    @IBAction func playerGuessFromSlider(sender: AnyObject) {
        
        guessValue = Int(guessSlider.value*5)
        self.playerGuess.text = "Your guess is \(guessValue)"
    }
    
    @IBAction func playGuess(sender: AnyObject) {
        let targetValue: Int = Int(arc4random_uniform(6))
        
        if guessValue == targetValue{
            self.playerResult.text = "Correct!"
        }
        else{
            self.playerResult.text = "Oops. Guess again."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playButton.clipsToBounds = true
        playButton.layer.cornerRadius = 30
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

