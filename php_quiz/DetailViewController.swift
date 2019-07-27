//
//  DetailViewController.swift
//  php_quiz
//
//  Created by 白川聡 on 2019/07/16.
//  Copyright © 2019 白川聡. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var quiz: QuizInfo!
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    //    @IBOutlet weak var back: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = quiz.title
        contentLabel.text = quiz.content
        // Do any additional setup after loading the view.
    }
    
  
    @IBAction func yesBtn(_ sender: Any) {
        if(quiz.answer == 1){
            resultLabel.text = "正解でーーーす"
            let correctImage = UIImage(named: "correct")
            self.resultImage.image = correctImage
            descriptionLabel.text = ""
        }else if(quiz.answer == 0){
            resultLabel.text = "外れでーーーす"
            let incorrectImage = UIImage(named: "incorrect")
            self.resultImage.image = incorrectImage
            descriptionLabel.text = quiz.description
            descriptionLabel.sizeToFit()
        }
    }
    
    @IBAction func noBtn(_ sender: Any) {
        if(quiz.answer == 0){
            resultLabel.text = "正解でーーーす"
            let correctImage = UIImage(named: "correct")
            self.resultImage.image = correctImage
            descriptionLabel.text = ""
            
        }else if(quiz.answer == 1){
            resultLabel.text = "外れでーーーす"
            let incorrectImage = UIImage(named: "incorrect")
            self.resultImage.image = incorrectImage
            descriptionLabel.text = quiz.description
            descriptionLabel.sizeToFit()
            
        }
    }
    

    
    
   
    
    

    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
