//
//  ViewController.swift
//  Alien ImageView
//
//  Created by Sang won Seo on 2018. 4. 2..
//  Copyright © 2018년 Sang won Seo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 2
    var counter = 1
    var right = 1
    var left = 0
    
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myImageView.image = UIImage(named:"frame1.png")
        //첫번째 이미지를 로드함.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func imageUpdate(_ sender: UIButton) {
        switch count {
        case 1..<5:
            myImageView.image = UIImage(named:"frame\(count).png")
            count = count + 1
        default:
            myImageView.image = UIImage(named:"frame5.png")
            count = 1
        }
        if right == 1 {
            if counter >= 1 && counter < 5 {
            counter = counter + 1
            print("\(counter)")
            } else {
                right = 0
                left = 1
                counter = counter - 1
                print("\(counter)")
            }
        } else if left == 1 {
            if counter > 1 && counter <= 5 {
                counter = counter - 1
                print("\(counter)")
            } else {
                right = 1
                left = 0
                counter = counter + 1
                print("\(counter)")
            }
        }
    }
}

