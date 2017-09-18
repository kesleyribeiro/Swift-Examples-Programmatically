//
//  ViewController.swift
//  Switch Programmatically
//
//  Created by Kesley Ribeiro on 17/Sep/17.
//  Copyright © 2017 Kesley Ribeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // var switch
    var kesleySwitch: UISwitch!
    
    // let ImageView
    let backgroundImageView = UIImageView()
    
    // Background images
    let flaImage = UIImage(named: "flamengo.jpg")!
    let realImage = UIImage(named: "hala-madrid.jpg")!
    
    // First load func
    override func viewDidLoad() {
        super.viewDidLoad()

        // Switch Programmatically
        kesleySwitch = UISwitch()
        kesleySwitch.frame = CGRect(x: 0, y: 500, width: 0, height: 0)
        kesleySwitch.center.x = view.center.x
        kesleySwitch.onTintColor = UIColor.blue
        kesleySwitch.thumbTintColor = UIColor.white
        kesleySwitch.isOn = false
        kesleySwitch.addTarget(self, action: #selector(changeSwitch), for: .valueChanged)
        
        // ImageView Programmatically
        backgroundImageView.frame = CGRect(x: 0, y: 0, width: 375, height: 570)
        backgroundImageView.center.x = view.center.x
        
        backgroundImageView.image = flaImage
        backgroundImageView.highlightedImage = UIImage()
        backgroundImageView.isUserInteractionEnabled = true
        backgroundImageView.isHighlighted = false
        backgroundImageView.contentMode = .scaleAspectFit

        self.view.addSubview(backgroundImageView)
        self.view.addSubview(kesleySwitch)
    }
    
    // Called when view in touched
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        changeSwitch()
    }
    
    // Called when we toggled switch programmatically
    func changeSwitch () {
        
        // Switching bg images according to the state of switch
        if kesleySwitch.isOn {
            backgroundImageView.image = flaImage
            kesleySwitch.setOn(false, animated: true)
        } else {
            backgroundImageView.image = realImage
            kesleySwitch.setOn(true, animated: true)
        }
    }

}

