//
//  ViewController.swift
//  monavi
//
//  Created by SWUCOMPUTER on 2018. 4. 15..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet var textFieldNow: UITextField!
    @IBOutlet var segment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true //delegate method (키보드 없애기)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //textField내용을 하위뷰에 전달
        if segue.identifier == "toCheckview1"{
            let destVC = segue.destination as! CheckViewController1
            destVC.check1 = textFieldNow.text!
            destVC.title = textFieldNow.text
        }
    }
    @IBAction func switchSeg(_ sender: UISegmentedControl) {
    if segment.selectedSegmentIndex == 0{
        textFieldNow.isHidden = !true
        textFieldNow.text = "화랑대역 3번출구"
        }
    else {
        textFieldNow.text = ""
        textFieldNow.isHidden = !true
        }
    }
}

