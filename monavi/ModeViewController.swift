//
//  ModeViewController.swift
//  monavi
//
//  Created by SWUCOMPUTER on 2018. 4. 17..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ModeViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var collected: UILabel!
    @IBOutlet var collected2: UILabel!
    @IBOutlet var checkView3: UILabel!
    @IBOutlet var switchControll: UISwitch!
    
    let shopArray:Array<String> = ["레스토랑", "뷔페", "마트","카페", "피시방","당구장","노래방","영화관","백화점"]
    let ageArray:Array<String> = ["10대", "20대", "30대", "40대", "50대", "60대","70대"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collected.isHidden = true
        collected2.isHidden = true
        checkView3.isHidden = true
        switchControll.isOn = !true
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            if component == 0 {
            return shopArray.count
            }
            else {
            return ageArray.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return shopArray[row] }
        else {
            return ageArray[row] }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let shop:String = shopArray[self.pickerView.selectedRow(inComponent: 0)]
        let age:String = ageArray[self.pickerView.selectedRow(inComponent: 1)]
        //ModeView와 NavigatingView를 연결
        if segue.identifier == "toNavigatingView"{
            let destVC2 = segue.destination as! NavigatingViewController
            destVC2.info = shop
            destVC2.info2 = age
        }
    }
    @IBAction func getValue(_ sender: UISwitch) {
        let shop:String = shopArray[self.pickerView.selectedRow(inComponent: 0)]
        let age:String = ageArray[self.pickerView.selectedRow(inComponent: 1)]
        if sender.isOn{
            collected.isHidden = !true
            collected2.isHidden = !true
            checkView3.isHidden = !true
            checkView3.text = shop + ", " + age
        }
        else {
        }
    }
}
