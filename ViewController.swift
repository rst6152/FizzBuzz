//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Ricky Titus on 10/7/19.
//  Copyright © 2019 Ricky Titus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var enterNum: UITextField!
    @IBOutlet var enterBut: UIButton!
    @IBOutlet var newNum: UILabel!
    
    @IBAction func buttonPressed(_ sender: Any) {
        let numb = Int(enterNum.text!)
        newNum.text = fizzBuzz(num: numb!)
    }
    
    func fizzBuzz(num: Int) -> String{
        var result = ""
        for i in 1...num
        {
            if i % 3 == 0 && i % 5 == 0 && i % 7 == 0 {
                result += "FizzBuzzBang, "
            } else if i % 3 == 0 && i % 5 == 0 {
                result += "FizzBuzz, "
            } else if i % 3 == 0 {
                result += "Fizz, "
            } else if i % 5 == 0 {
                result += "Buzz, "
            } else if i % 7 == 0 {
                result += "Bang, "
            } else {
                result += String(i) + ", "
            }
        }
        return result
    }
    
}

