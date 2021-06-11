//
//  ViewController.swift
//  UpDownGame
//
//  Created by pluto on 6/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider : UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func slicerValueChange(_ sender: UISlider){
        print(sender.value)
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton){
        print( slider.value)
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton){
        print("touchUpResetButton")
    }
}

