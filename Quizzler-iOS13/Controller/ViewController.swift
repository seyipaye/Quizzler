//
//  ViewController.swift
//  Quizzler
//
//  Created by Seyi Ipaye on 18/04/2020.
//  Copyright © 2020 BreezyTech Developers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    

    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
    
        if quizBrain.checkAnswer(with: sender.currentTitle!) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
    
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getNextQuestion()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = quizBrain.getScoreText()
        choice1.setTitle(quizBrain.getChoice(for: 1), for: UIControl.State.normal)
        choice2.setTitle(quizBrain.getChoice(for: 2), for: UIControl.State.normal)
        choice3.setTitle(quizBrain.getChoice(for: 3), for: UIControl.State.normal)
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
    }
}

