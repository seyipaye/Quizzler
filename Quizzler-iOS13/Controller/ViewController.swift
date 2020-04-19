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
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = quizBrain.quiz[0].text
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
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}

