//
//  ViewController.swift
//  ColorsChange
//
//  Created by Grigory Don on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redPart: UIView!
    @IBOutlet weak var buttonPart: UIButton!
    @IBOutlet weak var greenPart: UIView!
    @IBOutlet weak var yellowPart: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenPart.layer.cornerRadius = 50
        yellowPart.layer.cornerRadius = 50
        redPart.layer.cornerRadius = 50
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.setTitle("Next", for: .normal)
        switch 1.0 {
        case Double(redPart.alpha):
            redPart.alpha = 0.3
            yellowPart.alpha = 1
            greenPart.alpha = 0.3
        case Double(yellowPart.alpha):
            redPart.alpha = 0.3
            yellowPart.alpha = 0.3
            greenPart.alpha = 1
        case Double(greenPart.alpha):
            redPart.alpha = 1
            yellowPart.alpha = 0.3
            greenPart.alpha = 0.3
            sender.setTitle("Start", for: .normal)
        default:
            return
        }
        
        
    }
    
}

