//
//   Settings.swift
//  SpringApp
//
//  Created by Виталий Гринчик on 10.03.23.
//

import SpringAnimation

struct AnimationSettings {
    
    private let forceRange = Double(0)...Double(5.0)
    private let durationRange = Double(0.5)...Double(2.0)
    private let delayRange = Double(0)...Double(1.0)
    
    let presetName: String
    let curveName: String
    let force: Double
    let duration: Double
    let delay: Double
    
    init() {
        let preset = AnimationPreset.allCases.randomElement() ?? .fadeIn
        presetName = String(describing: preset)
        
        let curve = AnimationCurve.allCases.randomElement() ?? .easeIn
        curveName = String(describing: curve)
        
        force = Double.random(in: forceRange)
        duration = Double.random(in: durationRange)
        delay = Double.random(in: delayRange)
    }
}
