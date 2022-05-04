//
//  ViewController.swift
//  Dicee-IOS
//
//  Created by Maricel Sumulong on 5/4/22.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlets and Variable Declaration
    
    @IBOutlet weak var diceOne: UIImageView!
    
    @IBOutlet weak var diceTwo: UIImageView!
    
    @IBOutlet weak var rollButton: UIButton!
    
    //array of images to be used when the roll button is clicked
    
    let imageArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //to use an image literal, type #imageLiteral(
        
        diceOne.image = #imageLiteral(resourceName: "dice6")
        
        //diceOne.alpha = 0.5
        
        diceTwo.image = #imageLiteral(resourceName: "dice2")
        
        rollButton.layer.cornerRadius = 10
    
    }

    @IBAction func rollButton(_ sender: UIButton) {
        
        diceOne.image = imageArray.randomElement()
        
        diceTwo.image = imageArray.randomElement()
        
    }
    
}

