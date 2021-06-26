//
//  ViewController.swift
//  UpDownGame
//
//  Created by pluto on 6/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var rnadomValeu: Int = 0
    var tryCount : Int = 0
    
    
    @IBOutlet weak var slider : UISlider!
    @IBOutlet weak var tryCountLable : UILabel!
    @IBOutlet weak var sliderValue : UILabel!
    
    @IBOutlet weak var minValueLable : UILabel!
    @IBOutlet weak var maxValueLable : UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"), for: .normal)
        reset()
    }
    
    @IBAction func slicerValueChange(_ sender: UISlider){
        print(sender.value)
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton){
        print( slider.value)
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton){
        print("touchUpResetButton")
        reset()
    }
    
    private func reset(){
        print("Reset")
        slider.value = 15
    }
}

