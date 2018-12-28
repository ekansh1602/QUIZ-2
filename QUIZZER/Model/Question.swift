//
//  Question.swift
//  QUIZZER
//
//  Created by Ekansh Anand Srivastava on 05/10/18.
//  Copyright © 2018 Avi Srivastava. All rights reserved.
//

import Foundation
class Question{
    let questionText: String
    let answer: Bool
    init(text:String,correctAnswer:Bool) {
        questionText = text
        answer = correctAnswer
    }
}
