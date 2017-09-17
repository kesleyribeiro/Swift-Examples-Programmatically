//
//  ViewController.swift
//  Slider Programmatically
//
//  Created by Kesley Ribeiro on 17/Sep/17.
//  Copyright © 2017 Kesley Ribeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // var sliders
    var kesleySlider1: UISlider!
    var kesleySlider2: UISlider!
    var kesleySlider3: UISlider!
    var kesleySlider4: UISlider!
    
    // var label
    var kesleyLabel: UILabel!
    
    // First load func
    override func viewDidLoad() {
        super.viewDidLoad()

        // Slider Programmatically - Slider 1 - Red
        kesleySlider1 = UISlider()
        kesleySlider1.frame = CGRect(x: 0, y: 30, width: 300, height: 31)
        kesleySlider1.center.x = view.center.x
        kesleySlider1.backgroundColor = UIColor.white
        kesleySlider1.addTarget(self, action: #selector(slider_action), for: .valueChanged)
        
        kesleySlider1.value = 0
        kesleySlider1.minimumValue = 0
        kesleySlider1.maximumValue = 255
        
        kesleySlider1.minimumValueImage = UIImage()
        kesleySlider1.maximumValueImage = UIImage(named: "red.png")
        kesleySlider1.isContinuous = true
        
        kesleySlider1.minimumTrackTintColor = UIColor.groupTableViewBackground
        kesleySlider1.maximumTrackTintColor = UIColor.red
        
        // Slider 2 - Green
        kesleySlider2 = UISlider()
        kesleySlider2.frame = CGRect(x: 0, y: 67, width: 300, height: 31)
        kesleySlider2.center.x = view.center.x
        kesleySlider2.backgroundColor = UIColor.white
        kesleySlider2.addTarget(self, action: #selector(slider_action), for: .valueChanged)
        
        kesleySlider2.value = 0
        kesleySlider2.minimumValue = 0
        kesleySlider2.maximumValue = 255
        
        kesleySlider2.minimumValueImage = UIImage()
        kesleySlider2.maximumValueImage = UIImage(named: "green.png")
        kesleySlider2.isContinuous = true
        
        kesleySlider2.minimumTrackTintColor = UIColor.groupTableViewBackground
        kesleySlider2.maximumTrackTintColor = UIColor.green
        
        // Slider 3 - Blue
        kesleySlider3 = UISlider()
        kesleySlider3.frame = CGRect(x: 0, y: 103, width: 300, height: 31)
        kesleySlider3.center.x = view.center.x
        kesleySlider3.backgroundColor = UIColor.white
        kesleySlider3.addTarget(self, action: #selector(slider_action), for: .valueChanged)
        
        kesleySlider3.value = 0
        kesleySlider3.minimumValue = 0
        kesleySlider3.maximumValue = 255
        
        kesleySlider3.minimumValueImage = UIImage()
        kesleySlider3.maximumValueImage = UIImage(named: "blue.png")
        kesleySlider3.isContinuous = true
        
        kesleySlider3.minimumTrackTintColor = UIColor.groupTableViewBackground
        kesleySlider3.maximumTrackTintColor = UIColor.blue
        
        // Slider 4
        kesleySlider4 = UISlider()
        kesleySlider4.frame = CGRect(x: 0, y: 139, width: 300, height: 31)
        kesleySlider4.center.x = view.center.x
        kesleySlider4.backgroundColor = UIColor.white
        kesleySlider4.addTarget(self, action: #selector(slider_action), for: .valueChanged)
        
        kesleySlider4.value = 0.5
        kesleySlider4.minimumValue = 0
        kesleySlider4.maximumValue = 1
        
        kesleySlider4.minimumValueImage = UIImage()
        kesleySlider4.maximumValueImage = UIImage(named: "white.png")
        kesleySlider4.isContinuous = true
        
        kesleySlider4.minimumTrackTintColor = UIColor.groupTableViewBackground
        kesleySlider4.maximumTrackTintColor = UIColor.lightGray
        
        // Add the sliders in the view
        self.view.addSubview(kesleySlider1)
        self.view.addSubview(kesleySlider2)
        self.view.addSubview(kesleySlider3)
        self.view.addSubview(kesleySlider4)

        // Label Programmatically
        kesleyLabel = UILabel()
        kesleyLabel.frame = CGRect(x: 0, y: 180, width: 300, height: 150)
        kesleyLabel.center.x = view.center.x

        kesleyLabel.font = UIFont(name: "HelveticaNeue-Light", size: 17)
        kesleyLabel.textColor = UIColor.black
        kesleyLabel.backgroundColor = UIColor.white

        kesleyLabel.textAlignment = NSTextAlignment.left
        kesleyLabel.lineBreakMode = NSLineBreakMode.byWordWrapping

        kesleyLabel.isHighlighted = false
        kesleyLabel.isUserInteractionEnabled = true
        kesleyLabel.isEnabled = true
        kesleyLabel.numberOfLines = 0
        kesleyLabel.adjustsFontSizeToFitWidth = true
        
        kesleyLabel.baselineAdjustment = UIBaselineAdjustment.alignCenters

        // Add the label in the view
        self.view.addSubview(kesleyLabel)
        
        // Shortcuts
        let red = kesleySlider1.value
        let green = kesleySlider2.value
        let blue = kesleySlider3.value
        let alpha = kesleySlider4.value
        
        // Show values or colors in label
        kesleyLabel.text = "R: \(red)\nG: \(green)\nB: \(blue)\nA: \(alpha)\n\nKESLEY RIBEIRO\nhttps://github.com/kesleyribeiro"
    }

    // Called when did slide
    func slider_action() {
        
        // Shortcuts
        let red = CGFloat(round(kesleySlider1.value))
        let green = CGFloat(round(kesleySlider2.value))
        let blue = CGFloat(round(kesleySlider3.value))
        let alpha = CGFloat(kesleySlider4.value)
        
        // Show values or colors in label
        kesleyLabel.text = "R: \(red)\nG: \(green)\nB: \(blue)\nA: \(alpha)\n\nKESLEY RIBEIRO\nhttps://github.com/kesleyribeiro"
        
        print("\nR: \(red)   G: \(green)   B: \(blue)   A: \(alpha)")
        
        self.view.backgroundColor = UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
    }

}

