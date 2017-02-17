//
//  ViewController.swift
//  CyanQuiz
//
//  Created by Kathleen Hang on 2/16/17.
//  Copyright © 2017 Kathleen. All rights reserved.
//

import UIKit
struct Question {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!


}



class ViewController: UIViewController {
    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet weak var QLabel: UILabel!

    var Questions = [Question]()
    
    var QNumber = Int()
    
    var AnswerNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Questions = [Question(Question: "What color is Courage the Cowardly Dog?", Answers: ["Purple","Orange","Green","Brown"], Answer: 0),
                     Question(Question: "Who is the man that lives with Courage?", Answers: ["George","Howard", "David", "Eustace"], Answer: 3),
        Question(Question: "Who is the woman that lives with Courage?", Answers: ["Jasmine", "Janette", "Muriel", "Kate"], Answer: 2),
        Question(Question: "Where does Courage go for help?", Answers: ["Bathroom", "Computer", "Eustace", "Out of Town"], Answer: 1),]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func PickQuestion(){
        
        if Questions.count > 0{
            QNumber = 0
            QLabel.text = Questions[QNumber].Question
            
            AnswerNumber = Questions[QNumber].Answer
            
            for i in 0..<Buttons.count{
                
                Buttons[i].setTitle(Questions[QNumber].Answers[i], for: UIControlState.normal)
            }
        
            Questions.remove(at: QNumber)
        
    }
        else{
            NSLog("Done!")
        }

}
    
    @IBAction func Btn1(_ sender: Any) {
        if AnswerNumber == 0{
        
            PickQuestion()
        }
        else{
            NSLog("Wrong!")
        }
        
        
    }
    @IBAction func Btn2(_ sender: Any) {
        
        if AnswerNumber == 1{
            
            PickQuestion()
        }
        else{
            NSLog("Wrong!")
        }
    }
    @IBAction func Btn3(_ sender: Any) {
        if AnswerNumber == 2{
            
            PickQuestion()
        }
        else{
            NSLog("Wrong!")
        }
    }
    @IBAction func Btn4(_ sender: Any) {
        if AnswerNumber == 3{
            
            PickQuestion()
        }
        else{
            NSLog("Wrong!")
        }
    }
    
}

