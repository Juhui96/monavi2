//
//  CheckViewController1.swift
//  monavi
//
//  Created by SWUCOMPUTER on 2018. 4. 17..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class CheckViewController1: UIViewController {
    @IBOutlet var labelCheck1: UILabel!
    var check1:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelCheck1.text = check1
    }
}
