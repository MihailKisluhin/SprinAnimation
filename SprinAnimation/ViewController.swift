//
//  ViewController.swift
//  SprinAnimation
//
//  Created by Kisluhin Mihail on 09.12.22.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

  
    @IBOutlet var animatedView: SpringView!
    
    @IBOutlet var firstParamLabel: UILabel!
    @IBOutlet var secondParamLabel: UILabel!
    @IBOutlet var thirdParamLabel: UILabel!
    @IBOutlet var fourthParamLabel: UILabel!
    @IBOutlet var fifthParamLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetParam()
    }

    @IBAction func runAnimButton(_ sender: UIButton) {
        presetParam()
        animatedView.animate()
        let anim = AnimationPreset.allCases.randomElement()!.rawValue
        
    }
    
    func setRandomParam() {
        animatedView.animation = "morph"
        animatedView.force = 2
        animatedView.duration = 2
    }
    
    func presetParam() {
       
        animatedView.animation = AnimationPreset.allCases.randomElement()!.rawValue
        animatedView.curve = AnimationCurve.allCases.randomElement()!.rawValue
        animatedView.force = 2
        animatedView.duration = 1
        animatedView.delay = 0.5
        
        firstParamLabel.text = "Preset: \(animatedView.animation)"
        secondParamLabel.text = "Curve: \(animatedView.curve)"
        thirdParamLabel.text = "Force: \(animatedView.force)"
        fourthParamLabel.text = "Duration: \(animatedView.duration)"
        fifthParamLabel.text = "Delay: \(animatedView.delay)"
        
    }
}

