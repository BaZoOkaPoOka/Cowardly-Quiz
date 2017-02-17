//
//  ViewController.swift
//  quizApp
//
//  Created by Kathleen Hang on 2/16/17.
//  Copyright © 2017 Kathleen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     let questions = ["What color is Courage the Cowardly Dog?", "What is the name of the woman that lives with Courage?", "What is the name of the man that lives with Courage?"]
     let answers = [["Purple","Grey","Orange"],["Muriel", "Angela", "Elizabeth"], ["Eustace", "Robert", "Ezio"]]
    
    //Variables
    var currentQuestion = 0
    var rightAnswerPlacement:UInt32 = 0
    var points = 0
    
    //Label
    @IBOutlet weak var lbl: UILabel!

    
    //Button
    
    @IBAction func action(_ sender: UIButton) {
    
 
        
        if (sender.tag == Int(rightAnswerPlacement))
        {
            print ("RIGHT!")
            points += 1
        }
        else
        {
            print ("WRONG!!!!!!!")
        }
        if (currentQuestion != questions.count)
        {
            newQuestion()
        }
        else{
            performSegue(withIdentifier: "showScore", sender: self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
    
    
    //Function that displays new question
    func newQuestion(){
        lbl.text = questions[currentQuestion]
        rightAnswerPlacement = arc4random_uniform(3)+1
        
        //Create a button
        var button:UIButton = UIButton()
        
        var x = 1
        
        for i in 1...3
        {
            //Create a button
            button = view.viewWithTag(i) as! UIButton
            
            if (i == Int(rightAnswerPlacement))
            {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }
            
            else
            {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = 2
            }
            
        }
        currentQuestion += 1
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

