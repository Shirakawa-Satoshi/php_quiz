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
    var description: String
    var answer: Int
    
}

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
 
    let quizzes = [
        QuizInfo(title:"PHPは何の略？",content:"PHPは、\n「PHP:Hypertext Preprocessor」の略である",description:"再帰的頭字語っていうみたいです。\n「PHP:Hypertext Preprocessor'」の中にあるPHPの略は「Personal Home Page Tools」を「PHP tools」と略したことが由来（公式リファレンスより）",answer:1),
        QuizInfo(title:"最新バージョン",content:"2019年7月現在のPHP最新バージョンは5.6である。",description:"7.3.7まで出てます。 \n ちなみにバージョン6は存在せず、5の後は７。",answer:0),
        QuizInfo(title:"今,最も人気のフレームワーク" ,content:"GitHubでのスター獲得数がPHPフレームワークの中で最も多いPHPフレームワークは、cakePHPである",description:"laravel  \n google検索トレンドでは、2016年後半ごろにcakePHPをlaravelが抜き、以降右肩上がりになっている。",answer:0),
        QuizInfo(title:"比較演算子①",content:"15 == '15'の実行結果はtrue",description:"演算子==は、ゆるい比較でオペランドのデータ型が違う場合でも暗黙的に変換して何とか等しくできないかと試みる親切な演算子",answer:1),
        QuizInfo(title:"比較演算子②",content:"15 == '15aaa'の実行結果はtrue",description:"数値文字列混在の文字列では、先頭の数値だけが判別される",answer:1),
        QuizInfo(title:"比較演算子③",content:"15 === '15'の実行結果はtrue",description:"演算子===が厳密な演算子であるため、データ型を区別する",answer:0),
        QuizInfo(title:"代入演算子",content:"<?php \n $x = 1\n print $x++; \n の実行結果は2である ",description:"print ++$x;だったら2。\n",answer:0),
        QuizInfo(title:"変数代入①",content:"<?php \n $x = 1; \n $y = $x; \n $x+=10; \n print $y; \n の実行結果は11である",description:"1という数字が$xに代入されただけ、$yが変化しても関係ない",answer:0),
        QuizInfo(title:"変数代入②",content:"<?php \n $x = 1; \n $y = &$x; \n $x+=10; \n print $y; \n の実行結果は11である",description:"$y = &$xで$xのアドレスを$yにコピーしたので、$xの変化が$yにも適応される",answer:1),
        QuizInfo(title:"sample_title",content:"sample_content",description:"sample_description",answer:1),
        QuizInfo(title:"sample_title",content:"sample_content",description:"sample_description",answer:1),
        QuizInfo(title:"sample_title",content:"sample_content",description:"sample_description",answer:1),
        QuizInfo(title:"sample_title",content:"sample_content",description:"sample_description",answer:1),
        QuizInfo(title:"sample_title",content:"sample_content",description:"sample_description",answer:1),
        QuizInfo(title:"sample_title",content:"sample_content",description:"sample_description",answer:1),
        QuizInfo(title:"sample_title",content:"sample_content",description:"sample_description",answer:1),
        QuizInfo(title:"sample_title",content:"sample_content",description:"sample_description",answer:1),
        QuizInfo(title:"sample_title",content:"sample_content",description:"sample_description",answer:1),
        
    ]
//    answer = 1の場合、まる。0のの場合、ばつ。
    
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

