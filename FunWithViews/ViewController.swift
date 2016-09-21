//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    @IBOutlet weak var topLeft: UIView!
    
    @IBOutlet weak var middleLeft: UIView!
    

    @IBOutlet weak var bottomLeft: UIView!
    
    @IBOutlet weak var middle: UIView!
    
    @IBOutlet weak var topRight: UIView!
    
    @IBOutlet weak var middleRight: UIView!
    
    @IBOutlet weak var bottomRight: UIView!
    
    @IBOutlet weak var redDie: UILabel!
 
    @IBOutlet weak var orangeDie: UILabel!
    
    @IBOutlet weak var yellowDie: UILabel!
    
    @IBOutlet weak var greenDie: UILabel!
    
    @IBOutlet weak var blueDie: UILabel!
    
    @IBOutlet weak var purpleDie: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLeft.isHidden = true
        middleLeft.isHidden = true
        bottomLeft.isHidden = true
        middle.isHidden = true
        topRight.isHidden = true
        middleRight.isHidden = true
        bottomRight.isHidden = true
        redDie.isHidden = true
        orangeDie.isHidden = true
        yellowDie.isHidden = true
        greenDie.isHidden = true
        blueDie.isHidden = true
        purpleDie.isHidden = true
        
    }
    

    
    @IBAction func rollTheDie(_ sender: AnyObject) {
        
        let randomRoll = randomDiceRoll()
        
        updateLabelWithRoll(roll: randomRoll)
        
        rearrangeDie(roll: randomRoll )
        
        
        
        }
    

    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    
    
    // Showing colored hidden label with die number
    
    func updateLabelWithRoll (roll:Int) {
        
        let diceRoll = String(roll)
        
        if redDie.isHidden{
            redDie.text = diceRoll
            redDie.isHidden = false
        }
        
        else if orangeDie.isHidden {
            orangeDie.text = diceRoll
            orangeDie.isHidden = false
        }
        
        else if yellowDie.isHidden {
            yellowDie.text = diceRoll
            yellowDie.isHidden = false
        }
        else if greenDie.isHidden {
            greenDie.text = diceRoll
            greenDie.isHidden = false
        }
        else if blueDie.isHidden {
            blueDie.text = diceRoll
            blueDie.isHidden = false
        }
        else if purpleDie.isHidden {
            purpleDie.text = diceRoll
            purpleDie.isHidden = false
        }
        
        else {
            
            redDie.text = diceRoll
            orangeDie.isHidden = true
            yellowDie.isHidden = true
            greenDie.isHidden = true
            blueDie.isHidden = true
            purpleDie.isHidden = true
            
            
        }
        
        }
    
    
    
    //Showing Hidden Boxes representing die
    
    func rearrangeDie (roll:Int) {
        
        switch roll {
        
        case 1:
            topLeft.isHidden = true
            middleLeft.isHidden = true
            bottomLeft.isHidden = true
            middle.isHidden = false
            topRight.isHidden = true
            middleRight.isHidden = true
            bottomRight.isHidden = true
        
        case 2:
            topLeft.isHidden = false
            middleLeft.isHidden = true
            bottomLeft.isHidden = true
            middle.isHidden = true
            topRight.isHidden = false
            middleRight.isHidden = true
            bottomRight.isHidden = true
        
        case 3:
            topLeft.isHidden = false
            middleLeft.isHidden = true
            bottomLeft.isHidden = true
            middle.isHidden = false
            topRight.isHidden = true
            middleRight.isHidden = true
            bottomRight.isHidden = false
        
        case 4:
            topLeft.isHidden = false
            middleLeft.isHidden = false
            bottomLeft.isHidden = true
            middle.isHidden = true
            topRight.isHidden = false
            middleRight.isHidden = false
            bottomRight.isHidden = true
        
        case 5:
            topLeft.isHidden = false
            middleLeft.isHidden = true
            bottomLeft.isHidden = false
            middle.isHidden = false
            topRight.isHidden = false
            middleRight.isHidden = true
            bottomRight.isHidden = false
        default:
            topLeft.isHidden = false
            middleLeft.isHidden = false
            bottomLeft.isHidden = false
            middle.isHidden = true
            topRight.isHidden = false
            middleRight.isHidden = false
            bottomRight.isHidden = false
            
            
        }
        
        
    }
        
        
}

    



