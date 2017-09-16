//
//  ViewController.swift
//  Button Programmatically
//
//  Created by Kesley Ribeiro on 15/Sep/17.
//  Copyright © 2017 Kesley Ribeiro. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    // var button
    var kesleyButton: UIButton!
    
    // First load func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray
       
        // Button Programmatically
        kesleyButton = UIButton(type: .custom)
        kesleyButton.frame = CGRect(x: 0, y: 0, width: 250, height: 40)
        kesleyButton.center.x = self.view.center.x
        kesleyButton.center.y = self.view.center.y
        
        kesleyButton.setTitle("KESLEY RIBEIRO", for: .normal)
        kesleyButton.setTitleColor(UIColor(red: 19/255, green: 150/255, blue: 155/255, alpha: 1), for: .normal)
        //kesleyButton.setTitleShadowColor(UIColor.black, for: .normal)
        kesleyButton.backgroundColor = UIColor.white
        kesleyButton.layer.cornerRadius = 5
        kesleyButton.layer.borderWidth = 2
        kesleyButton.layer.borderColor = UIColor(red: 19/255, green: 150/255, blue: 155/255, alpha: 1).cgColor
        kesleyButton.clipsToBounds = true

        kesleyButton.tintColor = .clear
        
        // Set button tag
        kesleyButton.tag = 27
        
        //kesleyButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        //kesleyButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        //kesleyButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

        kesleyButton.reversesTitleShadowWhenHighlighted = true
        //kesleyButton.adjustsImageWhenHighlighted = false
        //kesleyButton.adjustsImageWhenDisabled = false
        //kesleyButton.showsTouchWhenHighlighted = false
        
        // Call the func with action
        kesleyButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        // Add the button in the view
        self.view.addSubview(kesleyButton)
    }
    
    // Called when button pressed (program)
    func buttonPressed() {
    
        // Open my profile GitHub with Sarafi WebView :D
        if let url = URL(string: "http://github.com/kesleyribeiro") {
            
            let safariVC = SFSafariViewController(url: url)
            present(safariVC, animated: true, completion: nil)
        }
        
        print("\nButton tag is \(kesleyButton.tag)\n")
    }
    
}
