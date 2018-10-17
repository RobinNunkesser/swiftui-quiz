//
//  StatisticsViewController.swift
//  Quiz
//
//  Created by Prof. Dr. Nunkesser, Robin on 17.10.18.
//  Copyright © 2018 Hochschule Hamm-Lippstadt. All rights reserved.
//

import UIKit

class StatisticsViewController : UIViewController {
    
    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var correctQuestionsLabel: UILabel!
    @IBOutlet weak var wrongQuestionsLabel: UILabel!
    @IBOutlet weak var skippedQuestionsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        questionsLabel.text = "\(StatisticsSingleton.instance.answeredQuestions)"
        correctQuestionsLabel.text = "\(StatisticsSingleton.instance.correctAnswers)"
        wrongQuestionsLabel.text = "\(StatisticsSingleton.instance.falseAnswers)"
        skippedQuestionsLabel.text = "\(StatisticsSingleton.instance.skippedQuestions)"
    }

}
