//
//  ViewController.swift
//  PinViewTest
//
//  Created by Sukumar Anup Sukumaran on 27/04/19.
//  Copyright © 2019 TechTonic. All rights reserved.
//

import UIKit
//import SVPinView

class ViewController: UIViewController {

    //@IBOutlet weak var pinView: SVPinView!
    
    @IBOutlet weak var pinView: MyPinView!
    @IBOutlet weak var titleLB: UILabel!
    
    var funcs:OTPViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funcs = OTPViewModel(self)
        funcs.changeTitle1(text: "Hello")
        funcs.configurePinView()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTest(_ sender: UIButton) {
        funcs.changeTitle1(text: "Changed")
        print("PIN = \(pinView.getPin())")
    }


}

