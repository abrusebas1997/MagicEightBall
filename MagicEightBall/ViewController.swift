//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Sebastian Abarca on 4/15/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let answers = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]

    let answers2 = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]

    
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<answers.count)
        
        answerLabel.text = answers[randomIndex]
    }
    
    func generateAnswer2() {
        let randomIndex = Int.random(in: 0..<answers2.count)
        
        answerLabel2.text = answers2[randomIndex]
    }
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var answerLabel2: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func shakeButtonTapped(_ sender: Any) {
//        print("Shake it like a polaroid picture!")
//        answerLabel.text = "button was tapped"
        
        generateAnswer()
        generateAnswer2()

        
        // 1
//        let randomIndex = Int.random(in: 0..<answers.count)
        
        // 2
//        answerLabel.text = answers[randomIndex]
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateAnswer()
        generateAnswer2()
    }
    
    
    
    
}

