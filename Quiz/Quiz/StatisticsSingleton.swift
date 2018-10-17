//
//  StatisticsSingleton.swift
//  Quiz
//
//  Created by Prof. Dr. Nunkesser, Robin on 17.10.18.
//  Copyright © 2018 Hochschule Hamm-Lippstadt. All rights reserved.
//

import Foundation

class StatisticsSingleton {
    static let instance = StatisticsSingleton()
    private init() {}
    
    var answeredQuestions = 0
    var correctAnswers = 0
    var falseAnswers = 0
    var skippedQuestions = 0
}
