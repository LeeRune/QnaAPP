//
//  ResultViewController.swift
//  QnaApp
//
//  Created by 李易潤 on 2021/2/2.
//

import UIKit


class ResultViewController: UIViewController {
    
    
    var score: Int?

    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let getscore = score
        scoreLabel.text = getscore?.description
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    @IBAction func Again(_ sender: Any) {
        let alert = UIAlertController(title: "系統提示", message: "確定離開嗎？", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "確認", style: .default, handler: { (_) in
            self.performSegue(withIdentifier: "QuesSegue", sender: 0)
        }))
        alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: nil))

        self.present(alert, animated: true)
    }
    
    
}
