//
//  ViewController.swift
//  php_quiz
//
//  Created by 白川聡 on 2019/07/09.
//  Copyright © 2019 白川聡. All rights reserved.
//

import UIKit

struct QuizInfo {
    var title: String
    var content: String
    var answer: Int
}

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
 
    let quizzes = [
        QuizInfo(title:"ああ",content:"僕は白川",answer:1),
        QuizInfo(title:"title2",content:"content2",answer:1),
        QuizInfo(title:"title3",content:"content3",answer:0),
        QuizInfo(title:"title4",content:"content4",answer:1),
        QuizInfo(title:"title5",content:"content5",answer:0),
        QuizInfo(title:"title6",content:"content6",answer:1),
        QuizInfo(title:"title7",content:"content7",answer:0),
        QuizInfo(title:"title8",content:"content8",answer:1),
        QuizInfo(title:"title9",content:"content9",answer:0),
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizzes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // セルに表示する値を設定する
        let quiz = quizzes[indexPath.row]
        cell.textLabel!.text = quiz.title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // セルの選択を解除
        tableView.deselectRow(at: indexPath, animated: true)
        
//         別の画面に遷移
//        performSegue(withIdentifier: "toNextViewController", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var Tableview: UITableView!
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
        if let selectedRow = Tableview.indexPathForSelectedRow{
            let controller = segue.destination as! DetailViewController
            controller.quiz =  quizzes[selectedRow.row]
        }
    }
    
    
}

