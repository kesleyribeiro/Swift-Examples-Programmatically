//
//  ViewController.swift
//  TextView Programmatically
//
//  Created by Kesley Ribeiro on 16/Sep/17.
//  Copyright © 2017 Kesley Ribeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    // var TextView
    let kesleyTextView = UITextView()
    
    // First load func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TextView Programmatically
        kesleyTextView.frame.origin.x = 0
        kesleyTextView.frame.origin.y = 40
        kesleyTextView.frame.size.width = 300
        kesleyTextView.frame.size.height = 100
        kesleyTextView.center.x = view.center.x
        kesleyTextView.delegate = self
        
        kesleyTextView.text = "KESLEY RIBEIRO - iOS Developer"
        kesleyTextView.font = UIFont.boldSystemFont(ofSize: 17)
        kesleyTextView.textColor = .white
        kesleyTextView.textAlignment = .left
        
        kesleyTextView.isEditable = true
        kesleyTextView.isSelectable = true
        kesleyTextView.allowsEditingTextAttributes = true
        kesleyTextView.clearsOnInsertion = false
        
        kesleyTextView.dataDetectorTypes = [.all]
        kesleyTextView.backgroundColor = UIColor.blue
        kesleyTextView.returnKeyType = .done
        
        self.view.addSubview(kesleyTextView)
    }
    
    // *********** METHODS AND PROTOCOLS ***********
    
    // Firstly exec func when about to edit TextView
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        
        print("\nSHOULD BEGIN")
        
        // Change color background view
        view.backgroundColor = UIColor.yellow
        
        // Change color background textView
        kesleyTextView.backgroundColor = UIColor.white
        
        return true
    }

    // First exec func when about to end editing TextView
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        
        print("\nSHOULD END")
        
        // Change color background view
        view.backgroundColor = UIColor.white
        
        // Change color background textView
        kesleyTextView.backgroundColor = UIColor.blue
        
        return true
    }
    
    // Second exec func when did start editing TextView
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        print("\nDID BEGIN")
        
        // Change color background view
        view.backgroundColor = UIColor.red
        
        // Change color background textView
        kesleyTextView.backgroundColor = UIColor.lightText
    }
    
    // Second exec func when did end editing TextView
    func textViewDidEndEditing(_ textView: UITextView) {
        
        print("\nDID END")
        
        // Change color background view
        view.backgroundColor = UIColor.black
        
        // Change color background textView
        kesleyTextView.backgroundColor = UIColor.green
    }
    
    // First exec func when editing text in TextView
    func textView(_ textView: UITextView, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print("\nEDITING TEXT")
        
        kesleyTextView.text = kesleyTextView.text + " 0"
        
        // Change color background view
        view.backgroundColor = UIColor.black
        
        // Change color background textView
        kesleyTextView.backgroundColor = UIColor.red
        
        return true
    }
    
    // First exec func when did change some chars in TextView
    func textViewDidChange(_ textView: UITextView) {
        
        print("\nCHANGE CHARACTERS")
        
        // Change color background view
        view.backgroundColor = UIColor.yellow
        
        // Change color background textView
        kesleyTextView.backgroundColor = UIColor.blue
    }
    
    // Exec func when selected text in TextView
    func textViewDidChangeSelection(_ textView: UITextView) {
        
        print("\nSELECTION TEXT")
        
        // Change text color
        kesleyTextView.textColor = UIColor.purple
        
        // Change color background textView
        kesleyTextView.backgroundColor = UIColor.black
    }
    
    
    
    // Exec func hiden the keyboard when touch in view
    override func touchesBegan(_ touches: Set<UITouch>, with withEvent: UIEvent?) {
        
        print("\nTouch in view and hide the keyboard")
        
        view.endEditing(true)
    }
    
}

