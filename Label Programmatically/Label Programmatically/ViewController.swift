//
//  ViewController.swift
//  Label Programmatically
//
//  Created by Kesley Ribeiro on 15/Sep/17.
//  Copyright © 2017 Kesley Ribeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // var label
    var kesleyLabel: UILabel!
    
    // First load func
    override func viewDidLoad() {
        super.viewDidLoad()

        // Label Programmatically
        kesleyLabel = UILabel()
        
        kesleyLabel.frame = CGRect(x: 10, y: 100, width: 300, height: 150)
        
        kesleyLabel.text = "KESLEY RIBEIRO\n\nhttp://github.com/kesleyribeiro"
        kesleyLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
        kesleyLabel.textColor = UIColor.white
        
        kesleyLabel.backgroundColor = UIColor(red: 19/255, green: 150/255, blue: 155/255, alpha: 1)
        
        kesleyLabel.shadowColor = UIColor.black
        kesleyLabel.shadowOffset = CGSize(width: 2, height: 2)
        kesleyLabel.textAlignment = NSTextAlignment.center
        kesleyLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        //kesleyLabel.highlightedTextColor = UIColor.yellow
        kesleyLabel.isHighlighted = false
        kesleyLabel.isUserInteractionEnabled = true
        kesleyLabel.isEnabled = true
        kesleyLabel.numberOfLines = 0
        kesleyLabel.adjustsFontSizeToFitWidth = true
        //kesleyLabel.sizeToFit()
        
        kesleyLabel.baselineAdjustment = UIBaselineAdjustment.alignCenters
        
        // Add the label in the view
        self.view.addSubview(kesleyLabel)
    }

}

