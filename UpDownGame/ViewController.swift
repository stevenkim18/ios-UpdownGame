//
//  ViewController.swift
//  UpDownGame
//
//  Created by seungwoo kim on 2021/03/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"), for: .normal)
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func touchUpHitButton() {
        print("slider", slider.value)
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
    }
    

}

