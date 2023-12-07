//
//  MainViewController.swift
//  Magic Eight Ball
//
//  Created by Angeline Flora John on 12/4/23.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController, AVAudioPlayerDelegate {
    var audioPlayer: AVAudioPlayer? // to store the audio player
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
    
    // function when the phone is shaken
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getAnswer(UIEvent())
    }
    
    // function when "Shake the ball" button is pressed
    @IBAction func getAnswer(_ sender: Any) {
        playAudio()
        answerText.text = getRandomAnswer()
        answerText.isHidden = false
    }
    
    // function to get answers randomly
    func getRandomAnswer() -> String {
        let random = Int(arc4random_uniform(UInt32(answers.count)))
        let result = answers[random]
        
       return result
    }
    
    func playAudio() {
        guard let path = Bundle.main.path(forResource: "Shaking 6", ofType: "wav") else { return }
        let url = URL(fileURLWithPath: path)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print("Error in loading audio file \(error.localizedDescription)")
        }
    }
}
