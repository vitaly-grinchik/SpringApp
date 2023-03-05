//
//  ViewController.swift
//  SpringApp
//
//  Created by Виталий Гринчик on 3.03.23.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var animatingView: UIView!
    @IBOutlet var presetName: UILabel!
    @IBOutlet var button: UIButton!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IB Actions
    @IBAction func buttonTapped(_ sender: Any) {
        animateNext()
    }
    
    private func animateNext() {
        
    }
    
}

