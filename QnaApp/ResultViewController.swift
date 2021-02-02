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
        performSegue(withIdentifier: "QuesSegue", sender: 0)
    }
    
    
}
