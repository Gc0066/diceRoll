//
//  ViewController.swift
//  diceRoll
//
//  Created by George Coleman on 11/10/2018.
//  Copyright © 2018 George Coleman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var leftImage: UIImageView!
    
    
    @IBOutlet weak var rightImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        let numberOne = arc4random_uniform(6) + 1
        let numberTwo = arc4random_uniform(6) + 1

        label.text = "The sum is: \(numberOne + numberTwo)"

        leftImage.image = UIImage(named: "Dice\(numberOne)")
        rightImage.image = UIImage(named: "Dice\(numberTwo)")
        
    }
    
}

