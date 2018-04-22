//
//  NavigatingViewController.swift
//  monavi
//
//  Created by SWUCOMPUTER on 2018. 4. 17..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class NavigatingViewController: UIViewController {

    @IBOutlet var infoView: UIView!
    @IBOutlet var infoLabel: UILabel!
    var info:String = ""
    var info2:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //infoView.isHidden = true
        //infoLabel.isHidden = true
        infoLabel.text = info2 + "고객님들이 관심있어 하시는" + " " + info + "가(이) 50m근방에 있습니다!"
    }
}
