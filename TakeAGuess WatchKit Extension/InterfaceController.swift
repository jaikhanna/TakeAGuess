//
//  InterfaceController.swift
//  TakeAGuess WatchKit Extension
//
//  Created by Jai Khanna on 4/21/16.
//  Copyright © 2016 Jai Khanna. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var guessSlider: WKInterfaceSlider!
    
    @IBOutlet var playerGuess: WKInterfaceLabel!
    
    
    @IBOutlet var playerResult: WKInterfaceLabel!
    @IBOutlet var playButton: WKInterfaceButton!
    
    var guessValue: Int = 0
    
    @IBAction func playerGuessFromSlider(value: Float) {
        guessValue = Int(value*5)
        playerGuess.setText("Your guess is \(guessValue)")
    }
    
    
    @IBAction func playGuess() {
        let targetValue: Int = Int(arc4random_uniform(6))
        
        
        if guessValue == targetValue{
            playerResult.setText("Correct!")
        }
        else{
            playerResult.setText("Oops. Guess again.")
        }
        
    }
    
    
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
