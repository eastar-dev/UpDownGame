//
//  ViewController.swift
//  UpDownGame
//
//  Created by pluto on 6/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var randomValue: Int = 0
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
        let value = Int(slider.value)
        sliderValue.text = String(value)
        sender.value = Float(value)
    }
    
    func showMessage(message : String){
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default) { UIAlertAction in
            self.reset()
        }
        alert.addAction(okAction)
        present(alert, animated: true) {
            print("presented")
        }
    }
    
    
    @IBAction func touchUpHitButton(_ sender: UIButton){
        print( slider.value)
        let hitValue = Int(slider.value)
        
        tryCount+=1
        tryCountLable.text = "\(tryCount) / 5"
        
        
        if tryCount >= 5 {
            showMessage(message: "You lose...")
            reset()
            return
        }
        
        if hitValue < randomValue {
            slider.value = Float(hitValue)
            minValueLable.text = "\(hitValue)"
        } else if hitValue > randomValue {
            slider.value = Float(hitValue)
            maxValueLable.text = "\(hitValue)"
        } else {
            showMessage(message: "You Hit!!")
            reset()
        }
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton){
        print("touchUpResetButton")
        reset()
    }
    
    private func reset(){
        print("Reset")
        randomValue = Int.random(in: 0...30)
        print(randomValue)
        
        tryCount = 0
        tryCountLable.text = "0 / 5"
        minValueLable.text = "0"
        maxValueLable.text = "30"
        sliderValue.text = "15"

        slider.value = 15
        slider.minimumValue = 0
        slider.maximumValue = 30
    }
}

