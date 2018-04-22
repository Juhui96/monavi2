//
//  ToGoViewController.swift
//  monavi
//
//  Created by SWUCOMPUTER on 2018. 4. 17..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ToGoViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var textFieldGo: UITextField!
    @IBOutlet var segment2: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true //delegate method
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toCheckView2"{
            let destination = segue.destination as! CheckViewController2
            destination.check2 = textFieldGo.text!
            destination.title = textFieldGo.text
        }
 }
    @IBAction func switchSeg2(_ sender: Any) {
        if segment2.selectedSegmentIndex == 0{
            textFieldGo.isHidden = !true
            textFieldGo.text = "서울여자대학교 정문"
        }
        else {
            textFieldGo.text = ""
            textFieldGo.isHidden = !true
        }
    }
    
}
