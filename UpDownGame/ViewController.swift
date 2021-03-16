//
//  ViewController.swift
//  UpDownGame
//
//  Created by seungwoo kim on 2021/03/11.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber: Int = 0
    var tryCount: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maxinumValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"), for: .normal)
        
        reset()
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sliderValueLabel.text = String(Int(sender.value))
    }
    
    @IBAction func touchUpHitButton() {
        tryCount += 1
        tryCountLabel.text = String(tryCount) + " / 5"
        print("slider", slider.value, "random", randomNumber)
        if Int(slider.value) < randomNumber {
            minimumValueLabel.text = String(Int(slider.value))
            slider.minimumValue = slider.value
        } else if Int(slider.value) > randomNumber {
            maxinumValueLabel.text = String(Int(slider.value))
            slider.maximumValue = slider.value
        } else {
            let alert = UIAlertController(title: "맞췄습니다!", message: nil, preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(defaultAction)
            present(alert, animated: false, completion: reset)
        }
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
        reset()
    }
    
    func reset() {
        print("reset")
        randomNumber = Int.random(in: 0...30)
        tryCount = 0
        tryCountLabel.text = "0 / 5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15
        minimumValueLabel.text = "0"
        maxinumValueLabel.text = "30"
        sliderValueLabel.text = "15"
    }
}
