//
//  ViewController.swift
//  Dice
//
//  Created by Tim on 2025/4/5.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArr = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var index1: Int = 1
    var index2: Int = 1

    @IBOutlet weak var deiceImageView1: UIImageView!
    
    @IBOutlet weak var deiceImageView2: UIImageView!
    
    @IBAction func roll(_ sender: Any) {
        updateDiceImages()
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateDiceImages()
    }
    
    func updateDiceImages() {
        index1 = Int.random(in: 1...6)
        index2 = Int.random(in: 1...6)
        
        deiceImageView1.image = UIImage(named: "dice\(index1)")
        deiceImageView2.image = UIImage(named: diceArr[index2 - 1])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }


}

