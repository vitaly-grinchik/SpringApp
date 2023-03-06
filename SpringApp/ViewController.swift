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
    @IBOutlet var animatingView: SpringView!
    @IBOutlet var presetName: UILabel!
    @IBOutlet var button: UIButton!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    var delegate: Springable?
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - IB Actions
    @IBAction func buttonTapped(_ sender: Any) {
        animateNext()
    }
    
    private func animateNext() {
        
    }
    
}

extension ViewController: Springable {
    var autostart: Bool {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var autohide: Bool {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var animation: String {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var force: CGFloat {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var delay: CGFloat {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var duration: CGFloat {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var damping: CGFloat {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var velocity: CGFloat {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var repeatCount: Float {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var x: CGFloat {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var y: CGFloat {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var scaleX: CGFloat {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var scaleY: CGFloat {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var rotate: CGFloat {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var opacity: CGFloat {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var animateFrom: Bool {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var curve: String {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var layer: CALayer {
        <#code#>
    }
    
    var transform: CGAffineTransform {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    var alpha: CGFloat {
        get {
            <#code#>
        }
        set(newValue) {
            <#code#>
        }
    }
    
    func animate() {
        <#code#>
    }
    
    func animateNext(completion: @escaping () -> Void) {
        <#code#>
    }
    
    func animateTo() {
        <#code#>
    }
    
    func animateToNext(completion: @escaping () -> ()) {
        <#code#>
    }
    
    
}
