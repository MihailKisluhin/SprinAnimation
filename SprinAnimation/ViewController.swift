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
        animatedView.animate()
        setRandomParam()
    }
    
    func setRandomParam() {
        animatedView.animation = "morph"
        animatedView.force = 2
        animatedView.duration = 2
    }
    
    func presetParam() {
        animatedView.animation = "wobble"
        animatedView.force = 2
        animatedView.duration = 2
        
        firstParamLabel.text = "Animation: \(animatedView.animation)"
        secondParamLabel.text = "Force: \(animatedView.force)"
    }
}

