//
//  ViewController.swift
//  ImageView Programmatically
//
//  Created by Kesley Ribeiro on 16/Sep/17.
//  Copyright © 2017 Kesley Ribeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // let ImageView
    let kesleyImageView = UIImageView()
    
    // First load func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Image / picture itself
        let logoImage1 = UIImage(named: "K-logo.png")!
        let logoImage2 = UIImage(named: "K.jpg")!
        
        // ImageView programmatically
        kesleyImageView.frame = CGRect(x: 0, y: 30, width: 300, height: 300)
        kesleyImageView.center.x = view.center.x
        
        kesleyImageView.image = logoImage1
        kesleyImageView.highlightedImage = UIImage()
        
        kesleyImageView.isUserInteractionEnabled = true
        kesleyImageView.isHighlighted = false
        kesleyImageView.animationImages = [logoImage1, logoImage2]
        kesleyImageView.highlightedAnimationImages = [UIImage()]
        kesleyImageView.animationDuration = 1
        kesleyImageView.animationRepeatCount = 10
        kesleyImageView.startAnimating()
        
        self.view.addSubview(kesleyImageView)
        
        if  kesleyImageView.isAnimating {
            print("\nAnimating")
        } else {
            print("\nNot animating")
        }

        // ImageView programmatically to load pic from url
        let webImageView = UIImageView(frame: CGRect(x: 0, y: 350, width: 200, height: 200))
        webImageView.center.x = view.center.x

        // Load picture from URL
        let url = URL(string: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAuhAAAAJGJkM2E5M2ViLTFiYTYtNDAxMy05OTNiLWI2NDQwM2JlOGNkYQ.jpg")!
        let data = try? Data(contentsOf: url)
        let imageFromURL = UIImage(data: data!)
        
        webImageView.image = imageFromURL
        
        self.view.addSubview(webImageView)
    }
    
}

