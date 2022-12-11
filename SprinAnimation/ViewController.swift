//
//  ViewController.swift
//  SprinAnimation
//
//  Created by Kisluhin Mihail on 09.12.22.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    var animationName: String = "morph"
    
    @IBOutlet var animatedView: SpringView!
    
    @IBOutlet var firstParamLabel: UILabel!
    @IBOutlet var secondParamLabel: UILabel!
    @IBOutlet var thirdParamLabel: UILabel!
    @IBOutlet var fourthParamLabel: UILabel!
    @IBOutlet var fifthParamLabel: UILabel!
    
    @IBOutlet var animButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setParameters()
       // animButton.setTitle("Run", for: .normal)
    }

    @IBAction func runAnimButton(_ sender: UIButton) {
        setParameters()
        animatedView.animate()
        animationName = AnimationPreset.allCases.randomElement()!.rawValue
        animButton.setTitle("Run \(animationName)", for: .normal)
    }
    
    func setParameters() {
        
        animatedView.animation = animationName
        animatedView.curve = AnimationCurve.allCases.randomElement()!.rawValue
        animatedView.force = round(CGFloat.random(in: 0.0 ... 2.0) * 100) / 100
        animatedView.duration = round(CGFloat.random(in: 0.0 ... 2.0) * 100) / 100
        animatedView.delay = round(CGFloat.random(in: 0.0 ... 2.0) * 100) / 100
        
        firstParamLabel.text = "Preset: \(animatedView.animation)"
        secondParamLabel.text = "Curve: \(animatedView.curve)"
        thirdParamLabel.text = "Force: \(animatedView.force)"
        fourthParamLabel.text = "Duration: \(animatedView.duration)"
        fifthParamLabel.text = "Delay: \(animatedView.delay)"
    }
}

