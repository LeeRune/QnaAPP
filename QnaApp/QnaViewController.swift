//
//  QnaViewController.swift
//  QnaApp
//
//  Created by 李易潤 on 2021/1/31.
//

import UIKit


class QnaViewController: UIViewController{
    
    
    
    @IBOutlet weak var bottomViewHeight: NSLayoutConstraint!
    @IBOutlet weak var optionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet var selectionButton: [UIButton]!
    @IBOutlet var questionLabel: [UILabel]!
    
    var option = 1
    var rand = 1
    var score = 0
    var Q = QnaPool.init().qnas.shuffled()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showView()
    }
    
    @IBAction func back(_ unwindSegue: UIStoryboardSegue) {
        option = 1
        rand = 1
        score = 0
        scoreLabel.text = "得分：\(score)"
        Q = QnaPool.init().qnas.shuffled()
        showView()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let next = segue.destination as? ResultViewController{
            next.score = score
        }
    }
    

    @IBAction func selectionBtuuon(_ sender: UIButton) {
        
        if option < 10{
            option += 1
            optionLabel.text = "第 \(option) / 10 題"
            if sender.currentTitle == Q[rand].answer{
                score += 10
                scoreLabel.text = "得分：\(score)"
            }
            rand += 1
            showView()
        }else{
            if sender.currentTitle == Q[rand].answer{
                score += 10
                testLabel.text = score.description
            }
            performSegue(withIdentifier: "ResultSegue", sender: 0)
        }
        
    }
    func showView(){
        
        if QnaPool.init().qnas.count > 0{
            
            optionLabel.text = "第 \(option) / 10 題"
            for a in 0...3{
                let question = Q[rand].question[a]
                questionLabel[a].text = question
                let selection = Q[rand].selection[a]
                selectionButton[a].setTitle(selection, for: .normal)
            }
            
        }
    }
    
}



