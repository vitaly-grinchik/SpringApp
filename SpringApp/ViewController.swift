//
//  ViewController.swift
//  SpringApp
//
//  Created by Виталий Гринчик on 3.03.23.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var ball: SpringImageView!
    @IBOutlet var button: UIButton!
    @IBOutlet var animationPresetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private let forceRange = CGFloat(1)...CGFloat(5)
    private let durationRange = CGFloat(0.5)...CGFloat(3)
    private let delayRange = CGFloat(0)...CGFloat(1.5)
    
    private var setOfRandomValues: (
        animationPreset: String,
        curve: String,
        force: CGFloat,
        duration: CGFloat,
        delay: CGFloat
    ) = ("pop", "linear", 1, 0.7, 0.0)
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // MARK: - IB Actions
    @IBAction func buttonTapped() {
        animate()
        setOfRandomValues = getSetOfRandomValues()
        updateButtonTitle()
        updateLabels()
    }
    
    private func updateUI() {
        button.setTitle("Run", for: .normal)
        updateLabels()
    }
    private func updateButtonTitle() {
        button.setTitle("Run: \(setOfRandomValues.animationPreset)", for: .normal)
    }
        
    private func updateLabels() {
        animationPresetLabel.text = setOfRandomValues.animationPreset
        curveLabel.text = setOfRandomValues.curve
        forceLabel.text = String(format: "%.1f", setOfRandomValues.force)
        durationLabel.text = String(format: "%.1f", setOfRandomValues.duration)
        delayLabel.text = String(format: "%.1f", setOfRandomValues.delay)
    }
    
    private func animate() {
        ball.animation = setOfRandomValues.animationPreset
        ball.curve = setOfRandomValues.curve
        ball.force = setOfRandomValues.force
        ball.duration = setOfRandomValues.duration
        ball.delay = setOfRandomValues.delay
        
        ball.animate()
    }
    
    private func getSetOfRandomValues() -> (animationPreset: String,
                                       curve: String,
                                       force: CGFloat,
                                       duration: CGFloat,
                                       delay: CGFloat)
    {
        let preset = AnimationPreset.allCases.randomElement() ?? .fadeIn
        let presetName = String(describing: preset)
        
        let curve = AnimationCurve.allCases.randomElement() ?? .easeIn
        let curveName = String(describing: curve)
        
        let force = CGFloat.random(in: forceRange)
        let duration = CGFloat.random(in: durationRange)
        let delay = CGFloat.random(in: delayRange)
        
        return (presetName, curveName, force, duration, delay)
    }
}
