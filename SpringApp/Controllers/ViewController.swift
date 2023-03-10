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
    // View to be animated
    @IBOutlet var ball: SpringImageView!
    
    @IBOutlet var button: UIButton!
    
    // Labels
    @IBOutlet var animationPresetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animationSettings = AnimationSettings()
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // MARK: - IB Actions
    @IBAction func buttonTapped() {
        animate()
        animationSettings = AnimationSettings() // Get new values
        updateUI()
    }
  
    private func updateUI() {
        // Update labels
        animationPresetLabel.text = animationSettings.presetName
        curveLabel.text = animationSettings.curveName
        forceLabel.text = String(format: "%.1f", animationSettings.force)
        durationLabel.text = String(format: "%.1f", animationSettings.duration)
        delayLabel.text = String(format: "%.1f", animationSettings.delay)
        
        // Update button title
        button.setTitle("Run: \(animationSettings.presetName)", for: .normal)
    }
    
    private func animate() {
        ball.animation = animationSettings.presetName
        ball.curve = animationSettings.curveName
        ball.force = animationSettings.force
        ball.duration = animationSettings.duration
        ball.delay = animationSettings.delay
        
        ball.animate()
    }
}
