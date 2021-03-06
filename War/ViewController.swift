//
//  ViewController.swift
//  War
//
//  Created by durban.zhang on 2017/5/12.
//  Copyright © 2017年 durban.zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    var leftScore = 0
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    let cardNames = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","ace","jack","queen","king"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealTapped(_ sender: Any) {
        let currentDate = NSDate()
        
        let leftNumber:Int = Int(arc4random_uniform(13))
        print("leftNumber \(leftNumber)", currentDate)
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        
        let rightNumber:Int = Int(arc4random_uniform(9))
        print("rightNumber \(rightNumber)", currentDate)
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        if(leftNumber > rightNumber){
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else if (leftNumber < rightNumber){
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
}

