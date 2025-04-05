//
//  ViewController.swift
//  Dice
//
//  Created by Tim on 2025/4/5.
//

import UIKit

class ViewController: UIViewController {
    
    var index1: Int = 1

    @IBOutlet weak var deiceImageView1: UIImageView!
    
    @IBOutlet weak var deiceImageView2: UIImageView!
    
    @IBAction func roll(_ sender: Any) {
        
        index1 = Int.random(in: 1...6)
        
        deiceImageView1.image = UIImage(named: "dice\(index1)")
        deiceImageView2.image = UIImage(named: "dice\(Int.random(in: 1...6))")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

