//
//  Question.swift
//  Quizzler
//
//  Created by Seyi Ipaye on 19/04/2020.
//  Copyright © 2020 BreezyTech Developers. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var answer: [String]
    var correctAnswer: String

    init(q: String, a: [String], correctAnswer:String) {
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}
