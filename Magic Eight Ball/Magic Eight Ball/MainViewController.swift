//
//  MainViewController.swift
//  Magic Eight Ball
//
//  Created by Angeline Flora John on 12/4/23.
//

import UIKit

class MainViewController: UIViewController {
    var answers = ["It is certain!",
                   "Reply hazy, try again",
                   "Don't count on it",
                   "It is decidedly so",
                   "Ask again later",
                   "My reply is no",
                   "Without a doubt",
                   "Better not tell you now",
                   "My sources say no",
                   "Yes definitely",
                   "Cannot predict now",
                   "Outlook not so good",
                   "You may rely on it",
                   "Concentrate and ask again",
                   "Very doubtful",
                   "As I see it, yes",
                   "Most likely",
                   "Outlook good",
                   "Yes",
                   "All signs point to yes"
    ]
    @IBOutlet var answerText: UILabel!
    @IBOutlet var getAnswer: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Magic 8 ball"
    }
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getAnswer(UIEvent())
    }
    
    @IBAction func getAnswer(_ sender: Any) {
        answerText.text = getRandomAnswer()
        answerText.isHidden = false
    }
    
    func getRandomAnswer() -> String {
        let random = Int(arc4random_uniform(UInt32(answers.count)))
        let result = answers[random]
        
       return result
    }
    
}
