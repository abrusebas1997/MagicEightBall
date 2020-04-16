//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Sebastian Abarca on 4/15/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        print("Shake it like a polaroid picture!")
    }
    
}

